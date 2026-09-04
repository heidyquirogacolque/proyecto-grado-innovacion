# Prompts para Copia Directa del Documento Fuente (RTF/MD) a Capítulos LaTeX (Sin Modificación de Contenido)

**Repo:** `proyecto-grado-innovacion`  
**Modalidad:** Innovación Tecnológica (BTH RM 0912/2023)  
**Propósito:** Este conjunto de prompts está diseñado para migrar de forma **directa, fiel y literal (verbatim)** el contenido existente en `docs/proyecto.rtf` o `docs/proyecto.md` hacia los archivos modulares `.tex` de la plantilla (`capitulos/`, `estilos/configuracion.tex`, `preliminares/`, `tablas/` y `bibliografia/`), **sin modificar, inventar, parafrasear ni alterar la redacción original del autor**.

---

## ⚖️ Diferencia con el Flujo de `ficha-proyecto.md`

| Aspecto | Flujo `ficha-proyecto.md` | Flujo `copiar-documento.md` (Este archivo) |
| :--- | :--- | :--- |
| **Objetivo** | Extraer datos a una ficha intermedia, consultar datos faltantes y redactar/expandir en prosa académica formal. | Copiar y transferir **directa y textualmente** el contenido ya redactado en el documento fuente hacia los archivos LaTeX. |
| **Modificación de texto** | Sí (redacta, complementa y sintetiza según normas). | **NO** (fidelidad textual absoluta al documento fuente original). |
| **Ficha intermedia** | Obligatoria (`docs/ficha-proyecto.md`). | Omitida (migración directa de archivo a archivo). |
| **Tratamiento de vacíos** | Consulta al usuario o marca `[DATO PENDIENTE]`. | Aplica protocolo preventivo: deja comentario `%% [SIN CONTENIDO]`, evita entornos vacíos y no inventa texto. |

---

## 🛡️ Protocolo de Prevención de Bugs ante Datos o Contenido Faltante

Si el documento fuente (`docs/proyecto.rtf` o `docs/proyecto.md`) carece de información para alguna sección o metadato, **deben aplicarse estrictamente las siguientes reglas para evitar errores de compilación o páginas defectuosas**:

1. **Dedicatoria y Agradecimientos ausentes:**
   - ⚠️ **Bug prevenido:** Abrir `\begin{estilodedicatoria}...\end{estilodedicatoria}` sin contenido genera una página en blanco con título huérfano y entrada fantasma en el índice (TOC).
   - 🛠️ **Fix:** Si el documento fuente no contiene dedicatoria o agradecimiento, dejar el archivo `.tex` con solo un comentario `%% [SIN DEDICATORIA EN DOCUMENTO FUENTE]` y **SIN** el entorno `estilodedicatoria`.

2. **Resumen en lengua originaria o extranjera ausente:**
   - 🛠️ **Fix:** Si el documento fuente solo tiene resumen en español, no inventar traducciones en inglés ni en lenguas originarias. Omitir o comentar `\keywords{...}` y `\simikuna{...}`.

3. **Proyecto individual vs. en pareja:**
   - 🛠️ **Fix:** Si el proyecto tiene un solo autor, dejar `\newcommand{\autordos}{}` estrictamente vacío en `estilos/configuracion.tex`. La carátula detecta automáticamente la ausencia del segundo autor y ajusta el rótulo sin dejar espacios vacíos.

4. **Secciones de capítulos sin contenido en el origen:**
   - ⚠️ **Bug prevenido:** Si se inventa texto falso se viola la fidelidad; si se deja un entorno `itemize` vacío `\begin{itemize}\end{itemize}` se produce un error fatal de LaTeX (`LaTeX Error: Something's wrong--perhaps a missing \item`).
   - 🛠️ **Fix:** Conservar la cabecera `\section{...}` y `\label{...}` del archivo con un comentario `%% [SECCIÓN SIN CONTENIDO EN DOCUMENTO FUENTE]`. **NUNCA** dejar entornos `\begin{itemize}` sin elementos `\item`.

5. **Tablas o figuras no presentes en el documento fuente:**
   - ⚠️ **Bug prevenido:** Incluir un `\input{tablas/archivo.tex}` que no existe detiene la compilación con `Fatal Error: File not found`.
   - 🛠️ **Fix:** Si el documento original no tiene datos para una tabla, no crear archivos vacíos ni incluir `\input{tablas/...}` inexistentes.

6. **Ausencia de bibliografía o fuentes citadas:**
   - 🛠️ **Fix:** Si el origen no tiene referencias bibliográficas, dejar `bibliografia/referencias.bib` vacío con un comentario. `biber` y `pdflatex` compilarán sin errores.

7. **Escape de caracteres reservados de LaTeX en el texto fuente:**
   - ⚠️ **Bug prevenido:** Símbolos como `%`, `_`, `&`, `#`, `$`, `{`, `}` provocan fallos de sintaxis al compilar.
   - 🛠️ **Fix:** Escapar obligatoriamente estos símbolos en el texto copiado (`\%`, `\_`, `\&`, `\#`, `\$`, `\{`, `\}`).

---

## 📁 Mapeo de Archivos Destino (`capitulos/` - Innovación Tecnológica)

El proyecto estructura los 9 capítulos de manera modular bajo el directorio `capitulos/`:

```text
capitulos/
├── index.tex                                          # Ensamble maestro de los 9 capítulos
├── 01_introduccion/
│   ├── main.tex                                       # Cap. 1 — INTRODUCCIÓN (ensamble)
│   ├── contexto_general.tex                           #   └ Contexto general del sector
│   ├── motivacion_pertinencia.tex                     #   └ Motivación y pertinencia
│   └── contribucion_esperada.tex                      #   └ Contribución esperada
├── 02_planteamiento_problema/
│   ├── main.tex                                       # Cap. 2 — PLANTEAMIENTO DEL PROBLEMA
│   ├── diagnostico.tex                                #   └ Diagnóstico y descripción de la realidad
│   ├── identificacion_problema.tex                    #   └ Identificación del problema
│   ├── formulacion_problema.tex                       #   └ Formulación del problema
│   ├── objetivos.tex                                  #   └ Objetivos (general + específicos)
│   └── justificacion.tex                              #   └ Justificación técnica, social y económica
├── 03_marco_referencial/
│   ├── main.tex                                       # Cap. 3 — MARCO REFERENCIAL
│   ├── antecedentes.tex                               #   └ Antecedentes del proyecto
│   ├── bases_teoricas.tex                             #   └ Bases teóricas
│   └── marco_conceptual.tex                           #   └ Marco conceptual y normativo
├── 04_desarrollo_innovacion/
│   ├── main.tex                                       # Cap. 4 — DESARROLLO DE LA INNOVACIÓN
│   ├── diseno.tex                                     #   └ Diseño técnico (especificaciones técnicas)
│   ├── planificacion.tex                              #   └ Planificación y cronograma
│   ├── recursos.tex                                   #   └ Recursos (humanos, materiales, financieros)
│   └── calculo_costos.tex                             #   └ Cálculo de costos (inversión, operación, fijos, variables)
├── 05_metodologia/
│   ├── main.tex                                       # Cap. 5 — METODOLOGÍA
│   ├── tipo_investigacion.tex                         #   └ Tipo de investigación
│   ├── poblacion_muestra.tex                          #   └ Población y muestra
│   ├── tecnicas_instrumentos.tex                      #   └ Técnicas e instrumentos de recolección
│   └── analisis_datos.tex                             #   └ Procedimiento de análisis de datos
├── 06_estrategia_mejora/
│   ├── main.tex                                       # Cap. 6 — ESTRATEGIA DE MEJORA Y PROYECCIÓN
│   ├── plan_mejora.tex                                #   └ Plan de mejora continua
│   └── proyeccion_escalamiento.tex                    #   └ Proyección y escalamiento
├── 07_resultados/
│   ├── main.tex                                       # Cap. 7 — RESULTADOS
│   ├── resultados_obtenidos.tex                       #   └ Resultados obtenidos
│   ├── beneficios_impacto.tex                         #   └ Beneficios e impacto
│   └── comparacion_antes_despues.tex                  #   └ Comparación antes vs. después
├── 08_proyecto_vida/
│   └── main.tex                                       # Cap. 8 — PROYECTO DE VIDA (redacción en main.tex)
└── 09_conclusiones_recomendaciones/
    ├── main.tex                                       # Cap. 9 — CONCLUSIONES Y RECOMENDACIONES
    ├── conclusiones.tex                               #   └ Conclusiones
    └── recomendaciones.tex                            #   └ Recomendaciones
```

---

## 🚀 Opción A: Flujo Modular Paso a Paso

---

### Prompt 1 — Volcar datos institucionales y preliminares (Sin modificar texto)

```text
Actúa como asistente técnico de estructuración LaTeX. Tu objetivo en este paso es leer el documento fuente y extraer los datos generales y páginas preliminares EXACTAMENTE como están escritos, sin modificar el contenido.

1. Localización y lectura del documento fuente:
   - Revisa `docs/proyecto.rtf` o `docs/proyecto.md`.
   - Si es un archivo RTF, procesa el texto plano descartando las etiquetas de control RTF. Si es Markdown, léelo directamente.

2. Configuración institucional (`estilos/configuracion.tex`):
   - Extrae los valores textuales presentes en la portada/encabezado del documento y asígnalos a las macros correspondientes en `estilos/configuracion.tex`:
     * \tituloproyecto{...}
     * \subtituloproyecto{...} (si existe)
     * \autoruno{...}, \autordos{...}
     * \emailautoruno{...} (si existe)
     * \tutorproyecto{...}
     * \institucion{...}
     * \departamentoproyecto{...} / \provinciaproyecto{...} / \lugarproyecto{...}
     * \especialidad{...}
     * \fechaproyecto{...} / \gestionproyecto{...}
   - Regla 1 de AGENTS.md: NUNCA quemes (hardcodees) estos datos directamente en los archivos .tex de capítulos ni carátula.

3. Páginas preliminares (`preliminares/`):
   - `preliminares/dedicatoria.tex`: Copia el texto exacto de la dedicatoria dentro del entorno semántico `\begin{estilodedicatoria}{Dedicatoria} ... \end{estilodedicatoria}`. Si no existe en el documento fuente, deja el archivo vacío con `%% [SIN DEDICATORIA EN DOCUMENTO FUENTE]`.
   - `preliminares/agradecimiento.tex`: Copia el texto exacto de los agradecimientos dentro de `\begin{estilodedicatoria}{Agradecimiento} ... \end{estilodedicatoria}`. Si no existe, deja `%% [SIN AGRADECIMIENTO EN DOCUMENTO FUENTE]`.
   - `preliminares/resumen.tex`: Copia literalmente el resumen en castellano, el abstract (si existe) y el resumen en lengua originaria (si existe), utilizando las macros `\palabrasclave{...}`, `\keywords{...}` y `\simikuna{...}` con las palabras clave exactas del texto original.

4. Verificación:
   - Verifica que en `main.tex` se mantenga activo `\input{capitulos/index.tex}`.
   - Muestra el diff de los cambios realizados en este paso y NO toques aún los archivos de `capitulos/`.
```

---

### Prompt 2 — Copiar el contenido literal a los 9 Capítulos y Tablas (Sin Modificar Contenido)

```text
Lee por completo el documento fuente (`docs/proyecto.rtf` o `docs/proyecto.md`) y las reglas de `AGENTS.md`.

Tu tarea es copiar el contenido del documento fuente a los archivos .tex de `capitulos/` y `tablas/`, distribuyéndolo según la estructura modular, respetando con TOTAL FIDELIDAD la redacción y palabras originales del autor.

REGLAS CRÍTICAS DE COPIA TEXTUAL:
1. NO MODIFICAR EL CONTENIDO: Está terminantemente PROHIBIDO parafrasear, reescribir, resumir, embellecer o inventar texto. Conserva intactos los párrafos, términos técnicos, explicaciones, datos y conclusiones tal como fueron redactados en el documento fuente.
2. Adaptación sintáctica a LaTeX:
   - Escapa caracteres especiales de LaTeX si aparecen en el texto (% -> \%, _ -> \_, & -> \&, # -> \#, $ -> \$, etc.).
   - Convierte listas a viñetas `\begin{itemize}\item ... \end{itemize}` (o `\begin{enumerate}` solo si son secuencias numéricas correlativas explícitas).
   - Mantén intactas las etiquetas `\section{...}` y `\label{...}` existentes en cada archivo modular.
3. Modularidad:
   - No agregues `\chapter{...}` dentro de los archivos secundarios de sección (el archivo `main.tex` de cada capítulo ya contiene la cabecera del capítulo).
4. Mapeo de Secciones:
   - Cap. 1 (`capitulos/01_introduccion/`):
     * `contexto_general.tex` -> Contexto general, entorno sectorial/geográfico.
     * `motivacion_pertinencia.tex` -> Motivación, pertinencia de la innovación.
     * `contribucion_esperada.tex` -> Contribución o impacto esperado.
   - Cap. 2 (`capitulos/02_planteamiento_problema/`):
     * `diagnostico.tex` -> Diagnóstico de la situación actual.
     * `identificacion_problema.tex` -> Identificación y descripción del problema.
     * `formulacion_problema.tex` -> Pregunta o formulación del problema.
     * `objetivos.tex` -> Objetivo general y objetivos específicos (con `itemize`).
     * `justificacion.tex` -> Justificación técnica, social y económica.
   - Cap. 3 (`capitulos/03_marco_referencial/`):
     * `antecedentes.tex` -> Antecedentes y proyectos previos.
     * `bases_teoricas.tex` -> Fundamentos teóricos y tecnológicos.
     * `marco_conceptual.tex` -> Conceptos clave y normativa aplicable.
   - Cap. 4 (`capitulos/04_desarrollo_innovacion/`):
     * `diseno.tex` -> Diseño de la innovación y especificaciones técnicas.
     * `planificacion.tex` -> Cronograma y fases de ejecución.
     * `recursos.tex` -> Recursos humanos, materiales y financieros.
     * `calculo_costos.tex` -> Estructura y desglose de costos.
   - Cap. 5 (`capitulos/05_metodologia/`):
     * `tipo_investigacion.tex` -> Enfoque y tipo de investigación.
     * `poblacion_muestra.tex` -> Población objetivo y muestra.
     * `tecnicas_instrumentos.tex` -> Técnicas e instrumentos de recolección.
     * `analisis_datos.tex` -> Procedimiento de análisis de datos.
   - Cap. 6 (`capitulos/06_estrategia_mejora/`):
     * `plan_mejora.tex` -> Plan de mejora continua.
     * `proyeccion_escalamiento.tex` -> Proyección, sostenibilidad y escalamiento.
   - Cap. 7 (`capitulos/07_resultados/`):
     * `resultados_obtenidos.tex` -> Resultados de pruebas o implementación.
     * `beneficios_impacto.tex` -> Beneficios directos e indirectos.
     * `comparacion_antes_despues.tex` -> Comparación de la situación antes vs. después.
   - Cap. 8 (`capitulos/08_proyecto_vida/main.tex`):
     * Aspiraciones académicas, competencias desarrolladas y compromiso ético.
   - Cap. 9 (`capitulos/09_conclusiones_recomendaciones/`):
     * `conclusiones.tex` -> Conclusiones del proyecto (con `itemize`).
     * `recomendaciones.tex` -> Recomendaciones técnicas y académicas (con `itemize`).
5. Tablas y datos estructurados:
   - Si el documento fuente contiene tablas (costos, cronograma, especificaciones, etc.), crea el archivo correspondiente en `tablas/` usando `booktabs` (normas APA 7: `\toprule`, `\midrule`, `\bottomrule`, sin líneas verticales) e impórtalo con `\input{tablas/nombre_tabla.tex}`. Agrega `\notatabla{Fuente: ...}` si la tabla indica fuente original.
6. Secciones sin contenido en el documento fuente:
   - Si el documento fuente NO tiene información para alguna sección en particular, NO inventes texto ficticio. Deja la sección con un comentario LaTeX:
     `%% [SECCIÓN SIN CONTENIDO EN EL DOCUMENTO FUENTE]`
   - NUNCA dejes entornos `\begin{itemize}\end{itemize}` sin elementos `\item` (esto genera error fatal de compilación). Si no hay viñetas, no abras el entorno.
   - Si no hay tablas para una sección, NO invoques `\input{tablas/...}` con archivos inexistentes ni dejes referencias `\ref{tab:...}` rotas.
7. Al concluir, presenta un reporte listando:
   - Archivos .tex completados con texto literal.
   - Archivos que quedaron vacíos por ausencia de datos en el documento fuente.
   - Tablas extraídas e integradas.
```

---

### Prompt 3 — Transferir bibliografía a `bibliografia/referencias.bib` (Sin Modificar Fuentes)

```text
Revisa el apartado de Bibliografía, Referencias o Fuentes del documento fuente (`docs/proyecto.rtf` o `docs/proyecto.md`).

1. Extrae todas las fuentes y referencias bibliográficas listadas en el documento original.
2. Conviértelas al formato BibLaTeX estándar en `bibliografia/referencias.bib`, usando los tipos de entrada correspondientes (@book, @article, @online, @manual, @techreport, etc.):
   - Conserva con total exactitud los apellidos y nombres de autores, títulos, años de publicación, editoriales y enlaces URL.
   - No inventes referencias adicionales que no figuren en el documento fuente.
3. En los capítulos donde se mencionen estas fuentes, utiliza `\parencite{clave}` o `\textcite{clave}` según corresponda, sin alterar el texto circundante.
4. Muestra un resumen de las entradas bibliográficas agregadas a `bibliografia/referencias.bib`.
```

---

### Prompt 4 — Compilar y validar el documento final

```text
Ejecuta la compilación y validación del documento LaTeX generado tras la copia literal:

1. Ejecuta `./compilar.sh --fast` para verificar que la sintaxis LaTeX, escape de caracteres y enlaces modulares sean completamente válidos.
2. Si la compilación rápida pasa sin advertencias críticas ni errores, ejecuta `./compilar.sh --clean` para generar el PDF definitivo con el ciclo completo (pdflatex + biber + pdflatex x2) y limpiar archivos temporales.
3. Notifica el resultado:
   - Confirma la generación de `main.pdf`.
   - Indica el número total de páginas generadas.
   - Informa el estado de resolución del índice general, tablas, figuras y bibliografía.
```

---

## ⚡ Opción B: Prompt Todo-en-Uno (All-in-One Direct Migration)

Para ejecutar toda la copia directa en una sola instrucción sin pausas:

```text
Actúa como especialista en migración y estructuración de proyectos de grado en LaTeX para la modalidad Innovación Tecnológica (BTH RM 0912/2023).

Lee atentamente `AGENTS.md` y el documento fuente (`docs/proyecto.rtf` o `docs/proyecto.md`).

OBJETIVO EXCLUSIVO: Copiar y transferir TODO el contenido disponible en el documento fuente a la estructura modular de LaTeX del proyecto (`estilos/configuracion.tex`, `preliminares/`, `capitulos/`, `tablas/` y `bibliografia/`), conservando el texto de forma LITERAL Y EXACTA, SIN MODIFICAR, RESUMIR, PARAFRASEAR NI INVENTAR CONTENIDO.

INSTRUCCIONES DE EJECUCIÓN:

1. Metadatos Institucionales (`estilos/configuracion.tex`):
   - Extrae el título, autores, tutor, institución, gestión y localidad tal como están escritos y asígnalos a las macros de `estilos/configuracion.tex`. No quemes estos datos en capítulos ni carátula.

2. Preliminares (`preliminares/`):
   - Copia la dedicatoria en `preliminares/dedicatoria.tex` (`\begin{estilodedicatoria}{Dedicatoria}`).
   - Copia los agradecimientos en `preliminares/agradecimiento.tex` (`\begin{estilodedicatoria}{Agradecimiento}`).
   - Copia los resúmenes y palabras clave en `preliminares/resumen.tex` (`\palabrasclave`, `\keywords`, `\simikuna`).
   - Si no existen en el origen, deja el archivo vacío con un comentario `%% [SIN CONTENIDO EN FUENTE]`.

3. Capítulos Modulares (`capitulos/`):
   - Vuelca textualmente el contenido de cada sección en su respectivo archivo .tex:
     * Cap. 1: `contexto_general.tex`, `motivacion_pertinencia.tex`, `contribucion_esperada.tex`.
     * Cap. 2: `diagnostico.tex`, `identificacion_problema.tex`, `formulacion_problema.tex`, `objetivos.tex`, `justificacion.tex`.
     * Cap. 3: `antecedentes.tex`, `bases_teoricas.tex`, `marco_conceptual.tex`.
     * Cap. 4: `diseno.tex`, `planificacion.tex`, `recursos.tex`, `calculo_costos.tex`.
     * Cap. 5: `tipo_investigacion.tex`, `poblacion_muestra.tex`, `tecnicas_instrumentos.tex`, `analisis_datos.tex`.
     * Cap. 6: `plan_mejora.tex`, `proyeccion_escalamiento.tex`.
     * Cap. 7: `resultados_obtenidos.tex`, `beneficios_impacto.tex`, `comparacion_antes_despues.tex`.
     * Cap. 8: `08_proyecto_vida/main.tex`.
     * Cap. 9: `conclusiones.tex`, `recomendaciones.tex`.
   - Reglas de fidelidad textual: No alteres la redacción, ideas ni palabras del autor. Mantén las etiquetas `\section{...}` y `\label{...}` existentes. Aplica escape de caracteres especiales de LaTeX (% -> \%, _ -> \_, & -> \&, # -> \#). Usa `\begin{itemize}` para listas de viñetas (nunca dejes un `itemize` vacío sin `\item`).
   - Si una sección no tiene contenido en el origen, deja `%% [SECCIÓN SIN CONTENIDO EN EL DOCUMENTO FUENTE]`. NUNCA inventes información.
   - Si no hay tablas para una sección, no incluyas `\input{tablas/...}` inexistentes.

4. Tablas (`tablas/`) y Bibliografía (`bibliografia/referencias.bib`):
   - Extrae tablas a `tablas/*.tex` con formato APA 7 (`booktabs`, `\toprule`, `\midrule`, `\bottomrule`, sin líneas verticales) e impórtalas con `\input{tablas/...}`.
   - Vuelca las referencias bibliográficas a `bibliografia/referencias.bib` en formato BibLaTeX APA 7. Si no existen fuentes, deja el archivo vacío con un comentario.

5. Validación y Compilación:
   - Ejecuta `./compilar.sh --fast` y luego `./compilar.sh --clean`.
   - Presenta un informe final con el resumen de secciones migradas, tablas extraídas y confirmación de generación de `main.pdf`.
```
