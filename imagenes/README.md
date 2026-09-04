# Directorio de Imágenes y Figuras (`imagenes/`)

En este directorio se almacenan todas las imágenes, diagramas, esquemas, planos, fotografías y recursos visuales del proyecto de grado. La ruta `imagenes/` está registrada globalmente en `estilos/estilos.sty`, por lo que los archivos se incluyen directamente por su nombre sin necesidad de anteponer la ruta de carpeta.

---

## 📁 Archivos Disponibles

```text
imagenes/
├── README.md                          # Guía de uso y normas APA 7 (este archivo)
├── figura_ejemplo.tex                 # Plantilla modular de figura en LaTeX
├── diagrama_proceso_ejemplo.png       # Diagrama de flujo de alta resolución (300 DPI)
├── marco_portada_bth.png               # Marco decorativo perimetral azul de la portada BTH
└── logo_bth.png                        # Logotipo institucional oficial del Módulo San Julián
```

---

## 📐 Estándar APA 7ma Edición para Figuras e Ilustraciones

En las **Normas APA 7ma Edición**, las figuras siguen la **misma estructura y jerarquía visual que las tablas**:

1. **Rótulo y Título ARRIBA de la imagen:**
   - A diferencia de APA 6 (donde el título iba debajo), en **APA 7 el título y rótulo van siempre ARRIBA** del elemento gráfico.
   - El número de figura aparece en **negrita** (ej. **Figura 4.1:**).
   - El título debe ser claro, conciso y explicativo. Se genera con `\caption{...}` y la etiqueta de referencia cruzada con `\label{fig:...}`.

2. **Alineación y Centrado:**
   - La imagen debe centrarse horizontalmente usando `\centering`.

3. **Control de Dimensiones y Proporciones:**
   - El ancho predeterminado recomendado está centralizado en `estilos/configuracion.tex` mediante `\anchuraimagenpredeterminada` (por defecto `0.8\textwidth`).
   - Evitar imágenes que superen `\textwidth` para no desbordar los márgenes de página carta (3.0 cm izquierdo, 2.5 cm derecho/superior/inferior).

4. **Nota al Pie de la Figura (DEBAJO de la imagen):**
   - Se coloca inmediatamente después de la imagen con la macro semántica `\notafigura{...}`.
   - Genera automáticamente el encabezado *Nota.* en cursiva y con el espaciado adecuado (`\espacionotafigura`).
   - Debe especificar la fuente o procedencia:
     - **Elaboración propia:** `\notafigura{Elaboración propia.}`
     - **Elaboración propia con base en datos:** `\notafigura{Elaboración propia con base en pruebas de laboratorio.}`
     - **Fuente externa / bibliografía:** `\notafigura{Adaptado de \textcite{autor2024}.}`, `\notafigura{Tomado de \textcite{autor2023}, p. 45.}`

5. **Formatos y Calidad Gráfica:**
   - **Formatos admitidos:** PNG (`.png`), JPEG (`.jpg`, `.jpeg`) y PDF vectorial (`.pdf`).
   - **Resolución:** Mínimo 300 DPI para imágenes de mapa de bits (fotografías, capturas).
   - **Tipografía dentro de la imagen:** Tipografías sans-serif limpias (Arial, Helvetica, DejaVu Sans) en tamaño legible (entre 8 pt y 14 pt).

---

## 📌 Formas de Insertar una Figura

### Opción 1: Archivo Modular Independiente (Recomendado para orden del proyecto)
Crea un archivo `.tex` dentro de `imagenes/` (ej. `imagenes/esquema_red.tex`) e inclúyelo en el capítulo correspondiente con `\input`:

```latex
\input{imagenes/figura_ejemplo}
```

---

### Opción 2: Entorno Flotante Estándar (`figure`)
Escribe directamente el bloque en el capítulo `.tex` donde se requiera:

```latex
\begin{figure}[htbp]
    \centering
    \caption{Diagrama de bloques del circuito electrónico principal.}
    \label{fig:diagrama_bloques}
    \includegraphics[width=\anchuraimagenpredeterminada]{diagrama_proceso_ejemplo.png}
    \notafigura{Elaboración propia con base en el diseño esquemático.}
\end{figure}
```

---

### Opción 3: Macro Semántica Ágil (`\incluirfigura`)
Para una redacción rápida y limpia con una sola línea de código:

```latex
% Sintaxis: \incluirfigura[ancho opcional]{archivo}{Título}{etiqueta}{Nota}
\incluirfigura{diagrama_proceso_ejemplo.png}{Diagrama de flujo del proceso de transformación técnica.}{fig:flujo_proceso}{Elaboración propia.}
```

Si deseas un ancho personalizado diferente al predeterminado:

```latex
\incluirfigura[0.6\textwidth]{diagrama_proceso_ejemplo.png}{Diagrama compacto de proceso.}{fig:proceso_compacto}{Elaboración propia.}
```

Si la figura no requiere nota al pie, pasa el quinto argumento vacío:

```latex
\incluirfigura{diagrama_proceso_ejemplo.png}{Diagrama de proceso sin nota.}{fig:proceso_simple}{}
```

---

### Opción 4: Subfiguras Comparativas (Lado a Lado)
Para presentar dos imágenes comparativas (ej. antes vs después, o prototipo A vs prototipo B) bajo el mismo número de figura:

```latex
\begin{figure}[htbp]
    \centering
    \caption{Comparación visual del producto antes y después de la innovación.}
    \label{fig:comparacion_producto}
    \begin{subfigure}[b]{0.48\textwidth}
        \centering
        \includegraphics[width=\textwidth]{diagrama_proceso_ejemplo.png}
        \caption{Fase inicial del proceso}
        \label{fig:fase_inicial}
    \end{subfigure}
    \hfill
    \begin{subfigure}[b]{0.48\textwidth}
        \centering
        \includegraphics[width=\textwidth]{diagrama_proceso_ejemplo.png}
        \caption{Fase optimizada}
        \label{fig:fase_optimizada}
    \end{subfigure}
    \notafigura{Registros fotográficos obtenidos durante las pruebas de validación.}
\end{figure}
```

---

## 🔗 Referencias Cruzadas en el Texto

Para citar una figura dentro de la redacción de los capítulos, utiliza la macro estándar `\ref{fig:...}`:

```latex
Como se puede apreciar en la \ref{fig:diagrama_proceso_innovacion}, el flujo contempla tres fases críticas...
```
