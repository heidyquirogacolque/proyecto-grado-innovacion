#!/bin/bash

# ============================================================
# Script de Compilación y Limpieza para Proyecto de Grado BTH
# ============================================================

# Colores para salida en consola
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m' # Sin color

# Nombre del archivo principal sin extensión
MAIN="main"

# Detectar comando Python (compatibilidad Linux/macOS + Windows Git Bash)
# Orden: python3 (Linux/macOS) > python (Windows) > py (Windows Launcher)
# Nota: En Windows Git Bash, python3 puede ser un stub de Microsoft Store que falla;
# por eso se verifica con --version en lugar de solo command -v.
detectar_python() {
    if python3 --version >/dev/null 2>&1; then
        echo "python3"
        return
    fi
    if python --version >/dev/null 2>&1; then
        echo "python"
        return
    fi
    if py -3 --version >/dev/null 2>&1; then
        echo "py -3"
        return
    fi
    echo ""
}
PYTHON_CMD=$(detectar_python)

function limpiar_auxiliares() {
    echo -e "${YELLOW}Limpiando archivos auxiliares temporales...${NC}"
    find . -type f \( \
        -name "*.aux" -o \
        -name "*.log" -o \
        -name "*.toc" -o \
        -name "*.lof" -o \
        -name "*.lot" -o \
        -name "*.out" -o \
        -name "*.bbl" -o \
        -name "*.blg" -o \
        -name "*.run.xml" -o \
        -name "*.bcf" -o \
        -name "*.synctex.gz" -o \
        -name "*.fdb_latexmk" -o \
        -name "*.fls" -o \
        -name "*.upa" -o \
        -name "*.upb" -o \
        -name "*.listing" -o \
        -name "*-blx.bib" \
    \) -delete
    echo -e "${GREEN}¡Limpieza completada!${NC}"
}

function compilar_rapido() {
    echo -e "${CYAN}=== Compilación Rápida (1 pasada pdflatex) ===${NC}"
    pdflatex -interaction=nonstopmode "$MAIN.tex" > /dev/null
    if [ -f "$MAIN.pdf" ]; then
        echo -e "${GREEN}¡Compilación rápida completada! Archivo '$MAIN.pdf' actualizado.${NC}"
    else
        echo -e "${RED}Error en la compilación. Revisa '$MAIN.log'.${NC}"
        exit 1
    fi
}

function auditar_tablas() {
    if [ -f "scripts/verificar_tablas.py" ]; then
        if [ -z "$PYTHON_CMD" ]; then
            echo -e "${RED}Error: No se encontró Python 3 en el PATH (probado: python3, python, py).${NC}"
            echo -e "${YELLOW}Instala Python desde https://www.python.org/ y agrega al PATH.${NC}"
            return 1
        fi
        # shellcheck disable=SC2086
        $PYTHON_CMD scripts/verificar_tablas.py
        return $?
    else
        echo -e "${RED}Error: No se encontró 'scripts/verificar_tablas.py'.${NC}"
        return 1
    fi
}

function compilar_pdf() {
    # Eliminar PDF anterior para comprobar si se genera de nuevo
    rm -f "$MAIN.pdf"

    # Verificación preventiva de tablas APA 7 (no bloqueante)
    if [ -f "scripts/verificar_tablas.py" ] && [ -n "$PYTHON_CMD" ]; then
        # shellcheck disable=SC2086
        $PYTHON_CMD scripts/verificar_tablas.py > /dev/null 2>&1
        if [ $? -ne 0 ]; then
            echo -e "${YELLOW}Advertencia: Hay tablas con inconsistencias de estilo. Ejecuta './compilar.sh --check-tablas' (o '.\compilar.ps1 --check-tablas' en Windows) para auditarlas.${NC}"
        fi
    fi

    echo -e "${BLUE}=== Iniciando Compilación LaTeX (Paso 1/4) ===${NC}"
    pdflatex -interaction=nonstopmode "$MAIN.tex" > /dev/null
    
    echo -e "${BLUE}=== Procesando Bibliografía con Biber (Paso 2/4) ===${NC}"
    biber "$MAIN" > /dev/null 2>&1
    
    echo -e "${BLUE}=== Enlazando referencias cruzadas (Paso 3/4) ===${NC}"
    pdflatex -interaction=nonstopmode "$MAIN.tex" > /dev/null
    
    echo -e "${BLUE}=== Generando PDF e índices finales (Paso 4/4) ===${NC}"
    pdflatex -interaction=nonstopmode "$MAIN.tex" > /dev/null
    
    # Comprobar si se generó el PDF
    if [ -f "$MAIN.pdf" ]; then
        echo -e "${GREEN}¡Compilación completada! Archivo '$MAIN.pdf' generado exitosamente.${NC}"
    else
        echo -e "${RED}Error: No se pudo generar el archivo '$MAIN.pdf'. Revisa los errores en '$MAIN.log'.${NC}"
        exit 1
    fi
}

# Evaluar parámetros
if [ "$1" == "--only-clean" ]; then
    limpiar_auxiliares
    exit 0
elif [ "$1" == "--clean" ]; then
    compilar_pdf
    limpiar_auxiliares
    exit 0
elif [ "$1" == "--fast" ]; then
    compilar_rapido
    exit 0
elif [ "$1" == "--check-tablas" ]; then
    auditar_tablas
    exit $?
elif [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo -e "${CYAN}Uso del script de compilación:${NC}"
    echo -e "  ./compilar.sh              # Compila el PDF completo (4 pasos) y conserva temporales"
    echo -e "  ./compilar.sh --clean      # Compila el PDF completo y elimina temporales"
    echo -e "  ./compilar.sh --only-clean # Elimina temporales sin compilar"
    echo -e "  ./compilar.sh --fast       # Compilación rápida de 1 sola pasada (para redacción)"
    echo -e "  ./compilar.sh --check-tablas # Audita la conformidad de tablas con APA 7 y booktabs"
    exit 0
elif [ -n "$1" ]; then
    echo -e "${RED}Parámetro desconocido: $1${NC}"
    echo -e "Ejecute './compilar.sh --help' para ver las opciones disponibles."
    exit 1
else
    compilar_pdf
    exit 0
fi
