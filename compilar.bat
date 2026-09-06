@echo off
REM ============================================================
REM Wrapper CMD para Proyecto de Grado BTH — Windows
REM Invoca compilar.ps1 con Bypass de ExecutionPolicy
REM Soporta todos los parametros: --clean, --fast, --check-tablas, etc.
REM Uso: compilar.bat --fast  ^|  compilar --help
REM ============================================================
setlocal

REM Directorio del script (proyecto root)
set "SCRIPT_DIR=%~dp0"
set "PS_SCRIPT=%SCRIPT_DIR%compilar.ps1"

REM Detectar PowerShell disponible (preferir powershell 5.1, fallback pwsh 7+)
where powershell >nul 2>&1
if %ERRORLEVEL%==0 (
    powershell -NoProfile -ExecutionPolicy Bypass -File "%PS_SCRIPT%" %*
    exit /b %ERRORLEVEL%
)

where pwsh >nul 2>&1
if %ERRORLEVEL%==0 (
    pwsh -NoProfile -ExecutionPolicy Bypass -File "%PS_SCRIPT%" %*
    exit /b %ERRORLEVEL%
)

echo [ERROR] No se encontro PowerShell (powershell.exe / pwsh.exe) en el PATH.
echo Instala Windows PowerShell 5.1 o PowerShell 7+ y reintenta.
exit /b 1
