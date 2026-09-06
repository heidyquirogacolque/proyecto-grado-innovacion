#Requires -Version 5.1
<#
.SYNOPSIS
    Script de Compilación y Limpieza para Proyecto de Grado BTH — Windows (PowerShell)

.DESCRIPTION
    Equivalente nativo en PowerShell de `compilar.sh` para Windows 10/11.
    Gestiona el ciclo completo pdflatex -> biber -> pdflatex -> pdflatex,
    limpieza de auxiliares, compilación rápida y auditoría de tablas APA 7.

    Requisitos:
      - TeX Live 2024+ o MiKTeX (pdflatex, biber en PATH)
      - Python 3.x (python / python3 / py) para verificar_tablas.py

.EXAMPLE
    powershell -ExecutionPolicy Bypass -File .\compilar.ps1
    powershell -ExecutionPolicy Bypass -File .\compilar.ps1 --clean
    .\compilar.ps1 --fast
    .\compilar.ps1 --check-tablas
    .\compilar.ps1 --only-clean
    .\compilar.bat --help

.NOTES
    Autor: Proyecto de Grado BTH — San Julián
    Compatibilidad: Windows PowerShell 5.1 y PowerShell 7+
#>

param(
    [Parameter(ValueFromRemainingArguments = $true)]
    [string[]]$ArgsRest
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Continue"

# --- Compatibilidad Windows: forzar UTF-8 para evitar UnicodeEncodeError (cp1252/cp850) ---
try {
    $OutputEncoding = [Console]::OutputEncoding = [System.Text.Encoding]::UTF8
    [Console]::InputEncoding = [System.Text.Encoding]::UTF8
    chcp 65001 | Out-Null
    $env:PYTHONUTF8 = "1"
    $env:PYTHONIOENCODING = "utf-8"
} catch {}

# --- Configuración de proyecto ---
$MAIN = "main"
# Raíz del proyecto = directorio donde está este script (si se invoca por -File)
$ProjectRoot = if ($PSScriptRoot) { $PSScriptRoot } else { (Get-Location).Path }
# Asegurar que trabajamos desde la raíz del proyecto
if (Test-Path -LiteralPath (Join-Path $ProjectRoot "$MAIN.tex")) {
    Set-Location -LiteralPath $ProjectRoot
}

# --- Helpers de color (equivalentes a los ANSI de compilar.sh) ---
function Write-Info    { param([string]$m) Write-Host $m -ForegroundColor Cyan }
function Write-Success { param([string]$m) Write-Host $m -ForegroundColor Green }
function Write-Warn    { param([string]$m) Write-Host $m -ForegroundColor Yellow }
function Write-ErrorMsg{ param([string]$m) Write-Host $m -ForegroundColor Red }

function Get-PythonCommand {
    foreach ($cmd in @("python", "python3", "py")) {
        if (Get-Command $cmd -ErrorAction SilentlyContinue) {
            # Verificar que sea Python 3 ejecutable
            try {
                $null = & $cmd --version 2>&1
                if ($LASTEXITCODE -eq 0) { return $cmd }
            } catch { continue }
        }
    }
    return $null
}

function Test-LaTeXCommands {
    $missing = @()
    if (-not (Get-Command pdflatex -ErrorAction SilentlyContinue)) { $missing += "pdflatex" }
    if (-not (Get-Command biber -ErrorAction SilentlyContinue))    { $missing += "biber" }
    if ($missing.Count -gt 0) {
        Write-ErrorMsg "Error: No se encontro '$($missing -join ', ') ' en el PATH."
        Write-Host "Instala TeX Live (https://tug.org/texlive/) o MiKTeX (https://miktex.org/) y asegurate de que bin/ este en el PATH." -ForegroundColor Yellow
        Write-Host "En Windows con TeX Live tipico: C:\texlive\2026\bin\windows" -ForegroundColor Gray
        return $false
    }
    return $true
}

function Limpiar-Auxiliares {
    Write-Warn "Limpiando archivos auxiliares temporales..."
    $patterns = @(
        "*.aux", "*.log", "*.toc", "*.lof", "*.lot", "*.out",
        "*.bbl", "*.blg", "*.run.xml", "*.bcf", "*.synctex.gz",
        "*.fdb_latexmk", "*.fls", "*.upa", "*.upb", "*.listing"
    )
    $deleted = 0
    foreach ($pat in $patterns) {
        $files = Get-ChildItem -Path . -Recurse -File -Filter $pat -Force -ErrorAction SilentlyContinue |
                 Where-Object { $_.FullName -notmatch "\\\.git\\" }
        foreach ($f in $files) {
            try { Remove-Item -LiteralPath $f.FullName -Force -ErrorAction SilentlyContinue; $deleted++ } catch {}
        }
    }
    # Patron especial *-blx.bib (no soportado por -Filter con wildcard prefijo)
    $blx = Get-ChildItem -Path . -Recurse -File -Force -ErrorAction SilentlyContinue |
           Where-Object { $_.Name -like "*-blx.bib" -and $_.FullName -notmatch "\\\.git\\" }
    foreach ($f in $blx) {
        try { Remove-Item -LiteralPath $f.FullName -Force -ErrorAction SilentlyContinue; $deleted++ } catch {}
    }
    # Archivos auxiliares en la raiz con nombre main.* auxiliares que a veces quedan
    # (ya cubiertos arriba, pero por si acaso)
    Write-Success "Limpieza completada. ($deleted archivos eliminados)"
}

function Auditar-Tablas {
    $scriptPath = Join-Path $ProjectRoot "scripts\verificar_tablas.py"
    if (-not (Test-Path -LiteralPath $scriptPath)) {
        Write-ErrorMsg "Error: No se encontro 'scripts/verificar_tablas.py'."
        return 1
    }
    $py = Get-PythonCommand
    if (-not $py) {
        Write-ErrorMsg "Error: No se encontro Python 3 en el PATH (probado: python, python3, py)."
        Write-Host "Instala Python desde https://www.python.org/ y marca 'Add to PATH'." -ForegroundColor Yellow
        return 1
    }
    Write-Info "Ejecutando auditoria de tablas con $py ..."
    # Usar Out-Host para que la salida no sea capturada cuando se hace $code = Auditar-Tablas
    if ($py -eq "py") {
        & py -3 "$scriptPath" | Out-Host
    } else {
        & $py "$scriptPath" | Out-Host
    }
    $exitCode = $LASTEXITCODE
    return $exitCode
}

function Compilar-Rapido {
    if (-not (Test-LaTeXCommands)) { exit 1 }
    Write-Info "=== Compilacion Rapida (1 pasada pdflatex) ==="
    & pdflatex -interaction=nonstopmode "$MAIN.tex" | Out-Null
    if (Test-Path -LiteralPath "$MAIN.pdf") {
        Write-Success "Compilacion rapida completada. Archivo '$MAIN.pdf' actualizado."
    } else {
        Write-ErrorMsg "Error en la compilacion. Revisa '$MAIN.log'."
        # Mostrar ultimas lineas del log si existe
        if (Test-Path -LiteralPath "$MAIN.log") {
            Write-Host "--- ultimas 40 lineas de $MAIN.log ---" -ForegroundColor Gray
            Get-Content -LiteralPath "$MAIN.log" -Tail 40 | Write-Host -ForegroundColor Gray
        }
        exit 1
    }
}

function Compilar-Pdf {
    if (-not (Test-LaTeXCommands)) { exit 1 }

    # Eliminar PDF anterior para comprobar regeneracion
    if (Test-Path -LiteralPath "$MAIN.pdf") {
        try { Remove-Item -LiteralPath "$MAIN.pdf" -Force -ErrorAction SilentlyContinue } catch {}
    }

    # Verificacion preventiva de tablas APA 7 (no bloqueante, solo advertencia)
    $scriptPath = Join-Path $ProjectRoot "scripts\verificar_tablas.py"
    if (Test-Path -LiteralPath $scriptPath) {
        $py = Get-PythonCommand
        if ($py) {
            try {
                if ($py -eq "py") { & py -3 "$scriptPath" | Out-Null } else { & $py "$scriptPath" | Out-Null }
                if ($LASTEXITCODE -ne 0) {
                    Write-Warn "Advertencia: Hay tablas con inconsistencias de estilo. Ejecuta '.\compilar.ps1 --check-tablas' para auditarlas."
                }
            } catch {
                # No bloquear compilacion si falla auditoria
            }
        }
    }

    Write-Host "=== Iniciando Compilacion LaTeX (Paso 1/4) ===" -ForegroundColor Blue
    & pdflatex -interaction=nonstopmode "$MAIN.tex" | Out-Null

    Write-Host "=== Procesando Bibliografia con Biber (Paso 2/4) ===" -ForegroundColor Blue
    & biber "$MAIN" 2>&1 | Out-Null

    Write-Host "=== Enlazando referencias cruzadas (Paso 3/4) ===" -ForegroundColor Blue
    & pdflatex -interaction=nonstopmode "$MAIN.tex" | Out-Null

    Write-Host "=== Generando PDF e indices finales (Paso 4/4) ===" -ForegroundColor Blue
    & pdflatex -interaction=nonstopmode "$MAIN.tex" | Out-Null

    if (Test-Path -LiteralPath "$MAIN.pdf") {
        $pdf = Get-Item -LiteralPath "$MAIN.pdf"
        $kb = [math]::Round($pdf.Length / 1KB, 1)
        Write-Success "Compilacion completada. Archivo '$MAIN.pdf' generado exitosamente. ($kb KB)"
    } else {
        Write-ErrorMsg "Error: No se pudo generar el archivo '$MAIN.pdf'. Revisa los errores en '$MAIN.log'."
        if (Test-Path -LiteralPath "$MAIN.log") {
            Write-Host "--- ultimas 60 lineas de $MAIN.log ---" -ForegroundColor Gray
            Get-Content -LiteralPath "$MAIN.log" -Tail 60 | Write-Host -ForegroundColor Gray
        }
        exit 1
    }
}

function Show-Help {
    Write-Info "Uso del script de compilacion (Windows PowerShell):"
    Write-Host "  .\compilar.ps1               # Compila el PDF completo (4 pasos) y conserva temporales" -ForegroundColor White
    Write-Host "  .\compilar.ps1 --clean       # Compila el PDF completo y elimina temporales" -ForegroundColor White
    Write-Host "  .\compilar.ps1 --only-clean  # Elimina temporales sin compilar" -ForegroundColor White
    Write-Host "  .\compilar.ps1 --fast        # Compilacion rapida de 1 sola pasada (para redaccion)" -ForegroundColor White
    Write-Host "  .\compilar.ps1 --check-tablas # Audita la conformidad de tablas con APA 7 y booktabs" -ForegroundColor White
    Write-Host ""
    Write-Host "  .\compilar.bat [opciones]    # Wrapper CMD que invoca compilar.ps1 (mismas opciones)" -ForegroundColor Gray
    Write-Host "  compilar --help              # Muestra esta ayuda" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Requisitos Windows:" -ForegroundColor Yellow
    Write-Host "  - TeX Live 2026 (pdflatex, biber en PATH) o MiKTeX" -ForegroundColor Gray
    Write-Host "  - Python 3.x para --check-tablas" -ForegroundColor Gray
    Write-Host "  - PowerShell 5.1+ (ExecutionPolicy Bypass para este script)" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Ejecucion recomendada:" -ForegroundColor Yellow
    Write-Host "  powershell -ExecutionPolicy Bypass -File .\compilar.ps1" -ForegroundColor Gray
    Write-Host "  .\compilar.bat --fast" -ForegroundColor Gray
}

# --- Parseo de parametros (compatible con --clean, -h, etc.) ---
$arg = if ($null -ne $ArgsRest -and $ArgsRest.Count -gt 0) { $ArgsRest[0] } else { "" }

switch ($arg) {
    "--only-clean" {
        Limpiar-Auxiliares
        exit 0
    }
    "--clean" {
        Compilar-Pdf
        Limpiar-Auxiliares
        exit 0
    }
    "--fast" {
        Compilar-Rapido
        exit 0
    }
    "--check-tablas" {
        $code = Auditar-Tablas
        exit $code
    }
    "--help" { Show-Help; exit 0 }
    "-h"     { Show-Help; exit 0 }
    "/?"     { Show-Help; exit 0 }
    "" {
        Compilar-Pdf
        exit 0
    }
    default {
        Write-ErrorMsg "Parametro desconocido: $arg"
        Write-Host "Ejecute '.\compilar.ps1 --help' para ver las opciones disponibles." -ForegroundColor Yellow
        exit 1
    }
}
