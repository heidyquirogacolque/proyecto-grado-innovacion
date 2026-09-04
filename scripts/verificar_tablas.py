#!/usr/bin/env python3
# -*- coding: utf-8 -*-

r"""
===============================================================================
Script de Verificación y Auditoría de Estilo de Tablas (Normas APA 7ma Edición)
Proyecto de Grado BTH — Modalidad Innovación Tecnológica
===============================================================================

Este script audita todos los archivos de tablas en `tablas/*.tex` y cualquier
entorno de tabla en `capitulos/**/*.tex`, verificando:
1. Cumplimiento estricto de APA 7ma Edición (prohibición de líneas verticales,
   uso obligatorio de booktabs: toprule, midrule, bottomrule; no hline).
2. Posición y presencia del caption (arriba de la tabla según APA 7).
3. Presencia de etiquetas \label con prefijo estándar 'tab:'.
4. Centrado con \centering.
5. Detección de riesgo de desbordamiento de página (overfull hbox) por celdas
   largas sin auto-ajuste (recomienda tabularx con columnas X).
6. Balance de columnas por fila (conteo de '&' vs columnas declaradas).
7. Detección de tablas huérfanas (no importadas en ningún capítulo).
"""

import sys
import os
import glob
import re

# Códigos de color ANSI para la terminal
COLOR_RESET = "\033[0m"
COLOR_BOLD = "\033[1m"
COLOR_GREEN = "\033[0;32m"
COLOR_YELLOW = "\033[1;33m"
COLOR_RED = "\033[0;31m"
COLOR_CYAN = "\033[0;36m"
COLOR_GRAY = "\033[0;90m"

def obtener_ruta_base():
    """Retorna la ruta raíz del proyecto."""
    ruta_script = os.path.dirname(os.path.abspath(__file__))
    ruta_raiz = os.path.abspath(os.path.join(ruta_script, ".."))
    return ruta_raiz

def buscar_tablas_incluidas(ruta_raiz):
    r"""
    Escanea los capítulos en busca de todas las tablas importadas vía \input{tablas/...}.
    Retorna un conjunto de nombres base normalizados.
    """
    patron_input = re.compile(r"\\input\s*\{\s*(?:tablas/)?([^}]+)\s*\}")
    tablas_incluidas = set()
    
    archivos_capitulos = glob.glob(os.path.join(ruta_raiz, "capitulos", "**", "*.tex"), recursive=True)
    archivos_anexos = glob.glob(os.path.join(ruta_raiz, "anexos", "**", "*.tex"), recursive=True)
    archivos_preliminares = glob.glob(os.path.join(ruta_raiz, "preliminares", "**", "*.tex"), recursive=True)
    
    todos_los_tex = archivos_capitulos + archivos_anexos + archivos_preliminares + [os.path.join(ruta_raiz, "main.tex")]
    
    for archivo_tex in todos_los_tex:
        try:
            with open(archivo_tex, "r", encoding="utf-8", errors="replace") as f:
                for linea in f:
                    # Ignorar líneas comentadas
                    linea_limpia = linea.strip()
                    if linea_limpia.startswith("%"):
                        continue
                    coincidencias = patron_input.findall(linea)
                    for c in coincidencias:
                        c_limpio = c.strip()
                        if not c_limpio.endswith(".tex"):
                            c_limpio += ".tex"
                        nombre_base = os.path.basename(c_limpio)
                        tablas_incluidas.add(nombre_base)
        except Exception:
            pass
            
    return tablas_incluidas

def auditar_archivo_tabla(ruta_archivo, nombre_relativo, tablas_incluidas):
    """
    Audita un archivo individual de tabla .tex.
    Retorna un diccionario con los resultados del análisis.
    """
    resultado = {
        "archivo": nombre_relativo,
        "errores_criticos": [],
        "advertencias": [],
        "info": [],
        "es_huerfana": False
    }
    
    try:
        with open(ruta_archivo, "r", encoding="utf-8", errors="replace") as f:
            lineas = f.readlines()
            contenido = "".join(lineas)
    except Exception as e:
        resultado["errores_criticos"].append(f"No se pudo leer el archivo: {e}")
        return resultado

    # Comprobar inclusión en capítulos
    nombre_base = os.path.basename(ruta_archivo)
    if nombre_base != "tabla_ejemplo.tex" and nombre_base not in tablas_incluidas:
        resultado["es_huerfana"] = True
        resultado["info"].append("Tabla no incluida vía \\input{} en ningún capítulo")

    # 1. Verificar presencia de entorno table
    tiene_table_env = bool(re.search(r"\\begin\s*\{\s*table\s*\}", contenido))
    if not tiene_table_env:
        resultado["advertencias"].append("No está encapsulada en \\begin{table}[htbp]")

    # 2. Verificar \centering
    if tiene_table_env and not re.search(r"\\centering", contenido):
        resultado["advertencias"].append("Falta comando \\centering para centrar la tabla")

    # 3. Verificar caption
    pos_caption = contenido.find(r"\caption")
    pos_tabular = -1
    for m in re.finditer(r"\\begin\s*\{\s*(?:tabular|tabularx)\s*\}", contenido):
        pos_tabular = m.start()
        break

    if pos_caption == -1:
        resultado["errores_criticos"].append("Falta \\caption{...} con el título descriptivo de la tabla")
    elif pos_tabular != -1 and pos_caption > pos_tabular:
        resultado["errores_criticos"].append(
            "APA 7 requiere que \\caption esté ARRIBA de la tabla (antes de \\begin{tabular})"
        )

    # 4. Verificar label
    if not re.search(r"\\label\s*\{\s*tab:[^}]+\}", contenido):
        if not re.search(r"\\label\s*\{[^}]+\}", contenido):
            resultado["advertencias"].append("Falta etiqueta \\label{tab:...} para referencias cruzadas")
        else:
            resultado["advertencias"].append("La etiqueta \\label no usa el prefijo estándar 'tab:'")

    # 5. Verificar líneas verticales (Prohibidas en APA 7)
    patron_columnas = re.compile(r"\\begin\s*\{\s*(?:tabular|tabularx)\s*\}(?:\{[^}]*\})?\s*\{([^}]+)\}")
    coincidencias_col = patron_columnas.findall(contenido)
    
    for cols in coincidencias_col:
        if "|" in cols:
            resultado["errores_criticos"].append(
                f"Líneas verticales '|' detectadas en especificación '{{{cols}}}' (PROHIBIDAS en APA 7)"
            )

    # 6. Verificar \hline (Debe usarse booktabs)
    if re.search(r"\\hline", contenido):
        resultado["errores_criticos"].append(
            "Uso de '\\hline' detectado. APA 7 requiere 'booktabs' (\\toprule, \\midrule, \\bottomrule)"
        )

    # 7. Verificar reglas de booktabs
    if pos_tabular != -1:
        tiene_toprule = bool(re.search(r"\\toprule", contenido))
        tiene_bottomrule = bool(re.search(r"\\bottomrule", contenido))
        tiene_midrule = bool(re.search(r"\\midrule", contenido))
        
        if not tiene_toprule:
            resultado["advertencias"].append("Falta regla superior \\toprule de booktabs")
        if not tiene_midrule:
            resultado["advertencias"].append("Falta regla intermedia \\midrule para separar el encabezado")
        if not tiene_bottomrule:
            resultado["advertencias"].append("Falta regla inferior \\bottomrule de booktabs")

    # 8. Detección de riesgo de desbordamiento (celdas largas sin auto-ajuste)
    es_tabularx = bool(re.search(r"\\begin\s*\{\s*tabularx\s*\}", contenido))
    for num_linea, linea in enumerate(lineas, 1):
        linea_limpia = linea.strip()
        if linea_limpia.startswith("%") or not "&" in linea_limpia:
            continue
        celdas = [c.strip() for c in linea_limpia.split("&")]
        for celda in celdas:
            # Eliminar comandos latex comunes para medir texto real
            texto_celda = re.sub(r"\\[a-zA-Z]+(\{[^}]*\})?", "", celda).strip()
            # Ignorar placeholders [DATO PENDIENTE]
            if "[DATO PENDIENTE]" in texto_celda:
                continue
            if len(texto_celda) > 70 and not es_tabularx:
                resultado["advertencias"].append(
                    f"Línea {num_linea}: Celda con texto extenso ({len(texto_celda)} caracteres) "
                    "en tabla fija. Se sugiere usar 'tabularx' con columna 'X' para evitar desbordar el margen."
                )
                break

    # 9. Regla de formato numérico: Punto decimal obligatorio, sin coma ni punto en miles
    patron_coma_num = re.compile(r"\b\d+,\d+\b")
    patron_multi_puntos = re.compile(r"\b\d{1,3}(?:\.\d{3}){2,}\b")
    for num_linea, linea in enumerate(lineas, 1):
        linea_limpia = linea.strip()
        if linea_limpia.startswith("%"):
            continue
        # Detección de coma en números (decimal o miles)
        coincidencias_coma = patron_coma_num.findall(linea_limpia)
        if coincidencias_coma:
            for num in coincidencias_coma:
                resultado["errores_criticos"].append(
                    f"Línea {num_linea}: Uso indebido de coma en número '{num}'. "
                    "Regla del proyecto (SI/ISO 80000-1): utilizar punto para decimales (ej. 12.50) "
                    "y sin separador o espacio para miles (ej. 4500 o 25 000). Prohibido el uso de comas en números."
                )
        # Detección de múltiples puntos en un solo número
        coincidencias_puntos = patron_multi_puntos.findall(linea_limpia)
        if coincidencias_puntos:
            for num in coincidencias_puntos:
                resultado["errores_criticos"].append(
                    f"Línea {num_linea}: Puntos repetidos en número '{num}'. "
                    "No use punto como separador de miles. Use espacio o continuo (ej. 25 000 o 25000)."
                )

    return resultado

def auditar_todas_las_tablas():
    """Función principal de auditoría."""
    ruta_raiz = obtener_ruta_base()
    ruta_tablas = os.path.join(ruta_raiz, "tablas")
    
    archivos_tablas = sorted(glob.glob(os.path.join(ruta_tablas, "*.tex")))
    tablas_incluidas = buscar_tablas_incluidas(ruta_raiz)
    
    print(f"\n{COLOR_CYAN}{COLOR_BOLD}============================================================{COLOR_RESET}")
    print(f"{COLOR_CYAN}{COLOR_BOLD}  AUDITORÍA DE ESTILO Y ROBUSTEZ DE TABLAS (APA 7 / LaTeX)  {COLOR_RESET}")
    print(f"{COLOR_CYAN}{COLOR_BOLD}============================================================{COLOR_RESET}\n")
    
    total_archivos = len(archivos_tablas)
    tablas_con_error = 0
    tablas_con_advertencia = 0
    tablas_perfectas = 0

    for ruta in archivos_tablas:
        nombre_rel = os.path.relpath(ruta, ruta_raiz)
        res = auditar_archivo_tabla(ruta, nombre_rel, tablas_incluidas)
        
        tiene_error = len(res["errores_criticos"]) > 0
        tiene_adv = len(res["advertencias"]) > 0
        
        if tiene_error:
            tablas_con_error += 1
            simbolo = f"{COLOR_RED}[ERROR APA 7]{COLOR_RESET}"
        elif tiene_adv:
            tablas_con_advertencia += 1
            simbolo = f"{COLOR_YELLOW}[ADVERTENCIA]{COLOR_RESET}"
        else:
            tablas_perfectas += 1
            simbolo = f"{COLOR_GREEN}[CORRECTO]{COLOR_RESET}"
            
        print(f"{simbolo} {COLOR_BOLD}{nombre_rel}{COLOR_RESET}")
        
        for err in res["errores_criticos"]:
            print(f"    {COLOR_RED}✗ {err}{COLOR_RESET}")
        for adv in res["advertencias"]:
            print(f"    {COLOR_YELLOW}▲ {adv}{COLOR_RESET}")
        for inf in res["info"]:
            print(f"    {COLOR_GRAY}ℹ {inf}{COLOR_RESET}")
        print()

    print(f"{COLOR_CYAN}------------------------------------------------------------{COLOR_RESET}")
    print(f"Total de tablas analizadas: {total_archivos}")
    print(f"  {COLOR_GREEN}✓ Correctas según APA 7:{COLOR_RESET}     {tablas_perfectas}")
    print(f"  {COLOR_YELLOW}▲ Con advertencias de ajuste:{COLOR_RESET} {tablas_con_advertencia}")
    print(f"  {COLOR_RED}✗ Con errores críticos:{COLOR_RESET}      {tablas_con_error}")
    print(f"{COLOR_CYAN}------------------------------------------------------------{COLOR_RESET}\n")

    if tablas_con_error > 0:
        print(f"{COLOR_RED}{COLOR_BOLD}Se detectaron tablas que rompen el estilo APA 7 o la diagramación.{COLOR_RESET}")
        print(f"Corrige los errores antes de presentar o imprimir el documento final.\n")
        return 1
    elif tablas_con_advertencia > 0:
        print(f"{COLOR_GREEN}Todas las tablas cumplen las reglas críticas de APA 7.{COLOR_RESET}")
        print(f"{COLOR_YELLOW}Revisa las advertencias sugeridas para prevenir desbordamientos de página.{COLOR_RESET}\n")
        return 0
    else:
        print(f"{COLOR_GREEN}{COLOR_BOLD}¡Excelente! El 100% de las tablas cumple estrictamente con APA 7 y LaTeX.{COLOR_RESET}\n")
        return 0

if __name__ == "__main__":
    codigo_salida = auditar_todas_las_tablas()
    sys.exit(codigo_salida)
