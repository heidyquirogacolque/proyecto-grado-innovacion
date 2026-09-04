# Directorio de Tablas (`tablas/`)

En este directorio se almacenan todas las tablas independientes del documento, facilitando su edición modular y reutilización en los capítulos.

---

## 📁 Archivos Disponibles

```text
tablas/
├── tabla_ejemplo.tex                     # Estructura base de tabla formal con booktabs
├── estudio_mercado_ejemplo.tex           # Matriz de análisis de competidores y mercado
├── estructura_organizacional_ejemplo.tex # Matriz de estructura organizacional, cargos y remuneraciones
├── inversiones_ejemplo.tex               # Resumen de activos fijos y capital de operación
├── costos_produccion_ejemplo.tex         # Estructura de costos variables y costos fijos
├── indicadores_financieros_ejemplo.tex   # Resumen de indicadores financieros y punto de equilibrio
├── resultados_piloto_ejemplo.tex         # Resultados obtenidos en prueba piloto vs metas
├── costos_ejemplo.tex                    # Resumen de costos generales de innovación
├── cronograma_ejemplo.tex                # Planificación temporal de actividades por fases
├── especificaciones_tecnicas_ejemplo.tex # Matriz de especificaciones técnicas de hardware/software
├── plan_mejora_ejemplo.tex               # Matriz de mejora continua (horizontes, KPIs y metas)
├── comparacion_antes_despues_ejemplo.tex # Matriz comparativa antes vs después de la innovación
└── README.md                             # Guía de uso (este archivo)
```

---

## 📌 ¿Cómo incluir una tabla en un capítulo?

Para incluir una tabla en cualquier sección o capítulo `.tex`, utiliza la instrucción `\input`:

```latex
\input{tablas/inversiones_ejemplo.tex}
```

---

## 📐 Estándar APA 7ma Edición para Tablas con `booktabs`

1. **Líneas horizontales:** Usar únicamente `\toprule`, `\midrule` y `\bottomrule`.
2. **Sin líneas verticales:** Las normas APA prohíben totalmente las líneas verticales en tablas (`|`).
3. **Ubicación del Título (`\caption`):** Debe ubicarse siempre **arriba** de la tabla, seguido de `\label{tab:...}`.
4. **Alineación:**
   - Texto: alineado a la izquierda (`l` o `L`).
   - Números: alineados a la derecha (`r` o `R`).
   - Códigos o categorías breves: centrados (`c` o `C`).
5. **Control de Ancho y Salto de Línea:** Para tablas con texto descriptivo extenso, usa `tabularx` con ancho `\textwidth` y columnas auto-ajustables `L`, `C`, `R` o `X` para evitar que la tabla se desborde del margen derecho.
6. **Formato Numérico (Norma SI/ISO 80000-1):**
   - **Parte decimal:** Usar obligatoriamente **punto (`.`)** (ej. `12.50`, `98.5%`, `0.75`). **NUNCA** usar coma (`,`).
   - **Separador de miles:** **PROHIBIDO** el uso de comas (`,`) o puntos (`.`). Escribir cifras de 4 dígitos juntas sin separador (ej. `4500.00`, `1000`) y para 5 o más cifras usar espacio o continuo (ej. `25 000.00` o `25000.00`).
7. **Notas al pie de tabla (`\notatabla`):** Para fuentes de procedencia o aclaraciones metodológicas, usar obligatoriamente la macro semántica `\notatabla{...}` después de `\end{tabular}` o `\end{tabularx}`.

---

### 📄 Plantilla 1: Tabla Compacta de Datos Numéricos (`tabular`)
Para tablas sencillas con números o textos breves:

```latex
\begin{table}[htbp]
    \centering
    \caption{Título descriptivo y conciso de la tabla.}
    \label{tab:clave_referencia}
    \begin{tabular}{lrr}
        \toprule
        \textbf{Concepto} & \textbf{Cantidad} & \textbf{Monto (Bs)} \\
        \midrule
        Ítem 1            & 10                & 150.00 \\
        Ítem 2            & 5                 & 80.00 \\
        \midrule
        \textbf{Total}    &                   & \textbf{230.00} \\
        \bottomrule
    \end{tabular}
    \notatabla{Elaboración propia con base en cotizaciones locales.}
\end{table}
```

---

### 📄 Plantilla 2: Tabla Ancha con Texto Auto-Ajustable (`tabularx`)
Para tablas que contienen descripciones, especificaciones o actividades donde las celdas necesitan salto de línea automático y ajustarse exactamente al ancho de la página (`\textwidth`):

```latex
\begin{table}[htbp]
    \centering
    \caption{Especificaciones y descripción de componentes del sistema.}
    \label{tab:especificaciones_sistema}
    \begin{tabularx}{\textwidth}{llL}
        \toprule
        \textbf{Componente} & \textbf{Parámetro} & \textbf{Descripción Técnica Detallada} \\
        \midrule
        Microcontrolador    & Procesamiento      & Placa ESP32 con conectividad Wi-Fi y Bluetooth BLE integrada. \\
        Sensor DHT22        & Rango de Medición  & Rango térmico de -40 a 80 °C con precisión de $\pm$0.5 °C. \\
        \bottomrule
    \end{tabularx}
    \notatabla{Datos técnicos extraídos de las hojas de especificaciones del fabricante.}
\end{table}
```

*Columnas flexibles disponibles (definidas en `estilos.sty`):*
- `L`: Texto alineado a la izquierda con auto-ajuste de ancho.
- `C`: Texto centrado con auto-ajuste de ancho.
- `R`: Texto alineado a la derecha con auto-ajuste de ancho.

---

## 🔍 Verificación Automatizada de Tablas

Para validar que ninguna tabla agregada viole las normas APA 7 ni rompa la diagramación:

```bash
./compilar.sh --check-tablas
```

O directamente con Python:
```bash
python3 scripts/verificar_tablas.py
```

El script verifica:
- [x] Ausencia de líneas verticales (`|`).
- [x] Uso de `booktabs` en vez de `\hline`.
- [x] Ubicación superior obligatoria del `\caption`.
- [x] Presencia de `\label{tab:...}` y `\centering`.
- [x] Alerta preventiva de celdas con texto largo que requieran `tabularx`.
- [x] Detección de tablas no enlazadas en los capítulos.
