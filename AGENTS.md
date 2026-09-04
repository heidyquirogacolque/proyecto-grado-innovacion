# 🤖 AI Agent Guidelines & Project Definition (AGENTS.md)

Este archivo define la estructura, reglas y flujos de trabajo del proyecto para agentes de inteligencia artificial (como Antigravity, Cline, Cursor, Copilot, etc.). Si eres un agente de IA, lee estas instrucciones antes de modificar o crear archivos en este repositorio.

---

### 📋 Resumen del Proyecto

* **Nombre:** Proyecto de Grado BTH - Innovación Tecnológica (LaTeX Modular)
* **Objetivo:** Plantilla modular y parametrizada en LaTeX para la redacción de proyectos de grado y tesis académicas bajo la modalidad de Innovación Tecnológica.
* **Normativa:** Cumple con el Reglamento de Graduación del Bachillerato Técnico Humanístico (BTH) en Bolivia (Resolución Ministerial RM 0912/2023, ver [docs/REGLAMENTO_BTH__RM_0912_2023.pdf](docs/REGLAMENTO_BTH__RM_0912_2023.pdf)).
* **Modalidad Implementada:** **Innovación Tecnológica** estructurada en 9 capítulos dentro del directorio `capitulos/`.

---

## 🛠️ Stack Tecnológico & Formato

* **Motor de Documento:** LaTeX (`report` class).
* **Motor Bibliográfico:** `biblatex` con estilo `apa` (APA 7ma Edición) y backend `biber`, con `csquotes` (`autostyle`).
* **Tipografía:** Arial (`helvet`) de tamaño `11pt` en cuerpo principal, y Courier (`courier`) para código fuente y texto monoespaciado.
* **Código Fuente y Programación:** Entorno `listings` con sintaxis coloreada, soporte UTF-8 (español), tipografía Courier y estilo predeterminado `estilocodigo`.
* **Tamaño de Hoja:** Carta (`letterpaper`).
* **Márgenes:** Izquierdo: 3.0 cm | Derecho, Superior e Inferior: 2.5 cm.
* **Interlineado:** 1.5 líneas (`\onehalfspacing`) en párrafos.
* **Espaciado entre Párrafos (Estilo Microsoft Word):** Espaciado posterior configurable (`\espacioposteriorparrafo`, por defecto `8pt`) y sangría de primera línea (`\sangriaprimeralinea`, por defecto `0pt`) centralizados en `estilos/configuracion.tex` y aplicados con el paquete `parskip`.
* **División de Palabras (Silabación):** Desactivada globalmente (`\hyphenpenalty=10000`, `\exhyphenpenalty=10000`).
* **Compilación:** Automatizada con el script ejecutable `./compilar.sh` en la raíz (utiliza `pdflatex` y `biber`).
* **Dependencias de Sistema (TeX Live en Linux/Debian/Ubuntu):**
  ```bash
  sudo apt-get install -y texlive-latex-base texlive-latex-recommended texlive-latex-extra \
                          texlive-bibtex-extra biber texlive-publishers texlive-lang-spanish
  ```

---

## 📁 Estructura del Directorio

```text
proyecto-grado-innovacion/
├── main.tex                                # Entrada principal de compilación LaTeX (\input{capitulos/index.tex})
├── README.md                               # Guía del usuario para compilar y usar la plantilla
├── AGENTS.md                               # Instrucciones y reglas para Agentes de IA (este archivo)
├── ESTRUCTURA_CAPITULOS.md                 # Detalle temático de los 9 capítulos de Innovación Tecnológica
├── compilar.sh                             # Script ejecutable de compilación (pdflatex + biber) y limpieza
├── estilos/
│   ├── estilos.sty                         # Estilos, carga de paquetes (biblatex-apa, listings), títulos APA 7
│   ├── configuracion.tex                   # Variables centralizadas de autor(es), título, tutor, institución y modalidad
│   └── caratula.sty                        # Estilos, tipografía (Times New Roman), geometría y diagramación de la carátula BTH
├── preliminares/                           # Hojas frontales (numeración romana)
│   ├── caratula.tex                        # Portada oficial BTH modular (\imprimircaratulabth, marco azul opcional)
│   ├── agradecimiento.tex                  # Agradecimientos (\begin{estilodedicatoria}{Agradecimiento})
│   ├── dedicatoria.tex                     # Dedicatorias (\begin{estilodedicatoria}{Dedicatoria})
│   └── resumen.tex                         # Resúmenes (\capitulopreliminar, \palabrasclave, \keywords, \simikuna)
├── capitulos/                              # Modalidad: Innovación Tecnológica (Capítulos 1 al 9)
│   ├── index.tex                           # Ensamble de los 9 capítulos
│   ├── 01_introduccion/                    # Cap. 1: main.tex, contexto_general.tex, motivacion_pertinencia.tex, contribucion_esperada.tex
│   ├── 02_planteamiento_problema/          # Cap. 2: main.tex, diagnostico.tex, identificacion_problema.tex, formulacion_problema.tex, objetivos.tex, justificacion.tex
│   ├── 03_marco_referencial/               # Cap. 3: main.tex, antecedentes.tex, bases_teoricas.tex, marco_conceptual.tex
│   ├── 04_desarrollo_innovacion/           # Cap. 4: main.tex, diseno.tex, planificacion.tex, recursos.tex, calculo_costos.tex
│   ├── 05_metodologia/                     # Cap. 5: main.tex, tipo_investigacion.tex, poblacion_muestra.tex, tecnicas_instrumentos.tex, analisis_datos.tex
│   ├── 06_estrategia_mejora/               # Cap. 6: main.tex, plan_mejora.tex, proyeccion_escalamiento.tex
│   ├── 07_resultados/                      # Cap. 7: main.tex, resultados_obtenidos.tex, beneficios_impacto.tex, comparacion_antes_despues.tex
│   ├── 08_proyecto_vida/                   # Cap. 8: main.tex
│   └── 09_conclusiones_recomendaciones/    # Cap. 9: main.tex, conclusiones.tex, recomendaciones.tex
├── tablas/                                 # Tablas independientes incluidas vía \input{}
│   ├── README.md                           # Guía para estructurar tablas APA 7 con booktabs
│   ├── tabla_ejemplo.tex                   # Plantilla base de tabla
│   ├── estudio_mercado_ejemplo.tex         # Tabla de análisis de mercado
│   ├── estructura_organizacional_ejemplo.tex # Matriz de estructura organizacional, cargos y remuneraciones
│   ├── inversiones_ejemplo.tex             # Plan de inversión
│   ├── costos_produccion_ejemplo.tex       # Tabla de costos operativos de producción
│   ├── indicadores_financieros_ejemplo.tex # Resumen de indicadores financieros y punto de equilibrio
│   ├── resultados_piloto_ejemplo.tex       # Resultados obtenidos en prueba piloto vs metas
│   ├── costos_ejemplo.tex                  # Resumen de estructura de costos
│   ├── cronograma_ejemplo.tex              # Cronograma de actividades por fases
│   ├── especificaciones_tecnicas_ejemplo.tex # Matriz de especificaciones técnicas
│   ├── plan_mejora_ejemplo.tex             # Matriz del plan de mejora continua
│   └── comparacion_antes_despues_ejemplo.tex # Matriz de comparación antes vs después
├── codigo/                                 # Código fuente y scripts (.py, .cpp, .ino, .sql, etc.)
│   ├── README.md                           # Guía para almacenar e importar código externo
│   └── ejemplo_controlador.py              # Script de prueba importable vía \lstinputlisting
├── scripts/                                # Scripts de utilidad y validación de calidad
│   └── verificar_tablas.py                 # Auditoría de tablas APA 7 y prevención de desbordamientos
├── imagenes/                               # Gráficos, diagramas y logotipos
│   ├── README.md                           # Instrucciones para la gestión de recursos gráficos
│   ├── figura_ejemplo.tex                  # Plantilla modular de figura bajo APA 7
│   ├── diagrama_proceso_ejemplo.png        # Diagrama de flujo técnico en alta resolución (300 DPI)
│   ├── marco_portada_bth.png               # Marco decorativo perimetral azul de la portada BTH
│   └── logo_bth.png                        # Logotipo institucional oficial del Módulo San Julián
├── bibliografia/                           # Bibliografía BibLaTeX (APA 7ma Edición)
│   └── referencias.bib                     # Base de datos de referencias (.bib) formateada en APA 7
├── anexos/                                 # Apéndices del documento
│   ├── README.md                           # Guía para añadir y estructurar anexos
│   ├── index.tex                           # Ensamble de anexos con \capitulopreliminar{ANEXOS}
│   ├── anexo_a_canvas.tex                  # Anexo A: Modelo Canvas (\seccionanexo)
│   ├── anexo_b_fichas_tecnicas.tex         # Anexo B: Cotizaciones y fichas técnicas (\seccionanexo)
│   └── anexo_c_codigo_fuente.tex           # Anexo C: Código fuente importado (\seccionanexo)
├── promts/                                 # Prompts de apoyo y guías de revisión para agentes de IA
│   ├── migracion/                          # Prompts para migración de datos y llenado de fichas
│   │   ├── crear-contexto.md               # Generación y sincronización de archivos de contexto Markdown
│   │   ├── ficha-proyecto.md               # Flujo paso a paso para completar ficha y redactar capítulos
│   │   └── copiar-documento.md             # Flujo para copia literal y directa sin modificar contenido
│   └── revicion/                           # Flujo de revisión por etapas y análisis global (9 capítulos)
│       ├── 00_README_flujo_revision.md     # Guía del flujo de revisión por etapas
│       ├── 00_analisis-capitulos-tesis.md  # Prompt de análisis integral de coherencia y rigor
│       ├── 01_revision_estructura_general.md # Estructura general de 9 capítulos BTH RM 0912/2023
│       ├── 01b_revision_introduccion.md    # Cap. 1: Contexto, motivación, pertinencia y contribución
│       ├── 02_revision_planteamiento_problema.md # Cap. 2: Diagnóstico, problemas, objetivos
│       ├── 03_revision_marco_referencial.md # Cap. 3: Antecedentes, bases teóricas, conceptos
│       ├── 04_revision_desarrollo_innovacion.md # Cap. 4: Diseño, especificaciones, costos
│       ├── 05_revision_metodologia.md      # Cap. 5: Enfoque, muestra, instrumentos, análisis
│       ├── 06_revision_estrategia_mejora.md # Cap. 6: Plan de mejora continua y escalamiento
│       ├── 07_revision_resultados.md       # Cap. 7: Pruebas piloto, impacto, antes vs después
│       ├── 08_revision_proyecto_vida.md    # Cap. 8: Aspiraciones, competencias, compromiso
│       ├── 09_revision_conclusiones_recomendaciones.md # Cap. 9: Cierre de objetivos y recomendaciones
│       ├── 10_revision_coherencia_sincronia_global.md # Sincronía integral entre los 9 capítulos
│       ├── 11_revision_redaccion_estilo_academico.md # Registro impersonal y estilo APA 7
│       ├── 12_revision_citas_bibliografia.md # Normalización BibLaTeX APA 7ma Edición
│       └── 13_checklist_pre_entrega_final.md # Checklist institucional BTH pre-defensa
└── docs/                                   # Regulaciones oficiales y guías
    ├── REGLAMENTO_BTH__RM_0912_2023.pdf    # Reglamento Ministerial oficial RM 0912/2023
    ├── ficha-proyecto.md                   # Ficha de datos y requerimientos del proyecto
    ├── proyecto.md                         # Documento base de texto/notas brutas del proyecto real
    └── proyecto.rtf                        # Documento base en formato RTF del proyecto real
```

---

## 🎯 Reglas Críticas para la IA

### 1. Modificaciones de Datos Personales o Institucionales
* **REGLA:** **NUNCA** quemes (hardcodees) nombres de estudiantes, tutores, instituciones o títulos del proyecto directamente en los archivos `.tex` como `caratula.tex` o capítulos.
* **ACCIÓN:** Utiliza o actualiza las macros correspondientes en `estilos/configuracion.tex` (`\institucion`, `\modalidad`, `\especialidad`, `\tituloproyecto`, `\autoruno`, `\autordos`, `\tutorproyecto`, `\lugarproyecto`, `\gestionproyecto`, `\espacioposteriorparrafo`, `\sangriaprimeralinea`, `\espaciosuperiordedicatoria`, `\anchuraimagenpredeterminada`, `\activarmarcobth`, `\formulagradobth`, etc.).
* **Campos C.I.:** El número de C.I. del estudiante no forma parte de la plantilla y fue removido de las macros y de la carátula oficial.

### 2. Estructuración Modular de Capítulos
* **REGLA:** Conserva el diseño modular. Cada capítulo reside en su propia carpeta dentro de `capitulos/` y contiene un archivo `main.tex` que ensambla las secciones individuales.
* **Rutas Internas:** Los archivos secundarios dentro de cada capítulo deben incluirse con el prefijo `capitulos/` (ej. `\input{capitulos/02_planteamiento_problema/diagnostico}`).

### 3. Estilos de Títulos y Alineación (Normas APA 7 Adaptadas)
* **Color:** Todos los títulos y enlaces internos (TOC, LOF, LOT, referencias cruzadas) deben mostrarse en **negro** (`linkcolor=black`).
* **Interlineado:** Aplicar interlineado sencillo (`1.0`) interno en títulos de Nivel 1 al 4 (`\setstretch{1.0}`) para evitar separaciones excesivas cuando ocupan más de una línea.
* **Nivel 1 (`\chapter`):** Debe alinearse a la **izquierda**, no debe contener el prefijo de palabra "Capítulo" (ej. `1. INTRODUCCIÓN`), y debe usar un espaciado anterior negativo de `-15pt` en `titlesec` para elevar la posición inicial de inicio de hoja.
* **Otros Niveles:**
  - Nivel 2 (`\section`): Alineado izquierda, Negrita.
  - Nivel 3 (`\subsection`): Alineado izquierda, Negrita y Cursiva.
  - Nivel 4 (`\subsubsection`): Sangría de 1.27 cm, Negrita, tipo *run-in* terminando con punto.
  - Nivel 5 (`\paragraph`): Sangría de 1.27 cm, Negrita y Cursiva, tipo *run-in* terminando con punto.

### 4. Encabezados y Pies de Página
* **Encabezados:** Están totalmente deshabilitados. No debe mostrarse texto de cabecera superior ni línea horizontal separadora (`headrulewidth=0pt`).
* **Pies de Página:** La numeración de páginas debe mostrarse centrada en la parte inferior de las hojas que lo requieran (Capítulos 1 al 9).

### 5. Secciones Finales, Citas y Bibliografía (APA 7ma Edición)
* **Motor:** Se utiliza `biblatex` con `style=apa` y backend `biber`.
* **Citas en el Texto:**
  - Cita parentética (entre paréntesis): `\parencite{clave}` produce *(Apellido, Año)*.
  - Cita narrativa (en el flujo del texto): `\textcite{clave}` produce *Apellido (Año)*.
  - Citas múltiples: `\parencite{clave1, clave2}`.
* **Inclusión de la Lista de Referencias:** Se imprime en `main.tex` mediante `\printbibliography[heading=bibintoc, title={Bibliografía}]`.
* **Numeración de Capítulos:** La bibliografía y los anexos deben ser no numerados (`numberless` en `titlesec`) para evitar prefijos decimales o de capítulo.
* **Numeración de Página:** Toda la sección de Bibliografía y Anexos debe estar totalmente limpia de números de página y cabeceras mediante la macro global `\configurarseccionfinal` (`\pagestyle{empty}` y `\assignpagestyle{\chapter}{empty}`).
* **Estructura de Anexos:** Cada anexo individual debe declararse mediante `\seccionanexo{Título del Anexo}` para registrarse automáticamente en la tabla de contenidos sin numeración. El ensamble general en `anexos/index.tex` usa `\capitulopreliminar{ANEXOS}`.

### 6. Inserción y Verificación de Tablas e Imágenes
* **Tablas (Normas APA 7ma Edición):** Guardar en `tablas/` e importar vía `\input{tablas/archivo.tex}`.
  - Usar siempre `booktabs` (`\toprule`, `\midrule`, `\bottomrule`). **PROHIBIDO** el uso de líneas verticales (`|`) y de `\hline`.
  - El título `\caption{...}` debe ubicarse obligatoriamente **arriba** de la tabla, seguido de `\label{tab:...}` y `\centering`.
  - Para notas explicativas o fuentes al pie de la tabla, usar obligatoriamente la macro semántica `\notatabla{Fuente: ...}` (aplica tamaño pequeño, cursiva e interlineado ajustado según APA 7).
  - Para tablas con descripciones extensas, usar el entorno `tabularx` con ancho `\textwidth` y columnas auto-ajustables `L`, `C`, `R` o `X` (definidas en `estilos.sty`) para evitar desbordamientos del margen derecho.
  - **Auditoría de Tablas:** Ejecutar `./compilar.sh --check-tablas` (o `python3 scripts/verificar_tablas.py`) para validar que ninguna tabla rompa la diagramación ni viole APA 7.
* **Imágenes y Figuras (Normas APA 7ma Edición):** Guardar en `imagenes/` (.png, .jpg, .pdf) e incluirlas sin prefijo de ruta (ya configurado en `estilos.sty`).
  - **Estructura APA 7:** Título y rótulo obligatoriamente **arriba** de la imagen (`\caption{...}\label{fig:...}`), contenido gráfico centrado (`\centering`), y notas explicativas o fuentes **abajo** con la macro semántica `\notafigura{Fuente: ...}` (espaciado `\espacionotafigura`).
  - **Dimensiones:** Ancho estándar gobernado centralmente por `\anchuraimagenpredeterminada` (en `estilos/configuracion.tex`, por defecto `0.8\textwidth`).
  - **Estilo de Rótulo:** Configurable globalmente mediante `\estilorotuloapa` en `estilos/configuracion.tex` (`estricto` para 2 líneas bajo APA 7 oficial o `enlinea` para formato adaptado compacto en 1 sola línea).
  - **Formas de Inclusión:** Entorno clásico `\begin{figure}[htbp]`, macro semántica `\incluirfigura[ancho]{archivo}{Título}{etiqueta}{Nota}`, o subfiguras con `subcaption` (guía en `imagenes/README.md` y plantilla `imagenes/figura_ejemplo.tex`).

### 7. Inserción de Código Fuente y Algoritmos
* **Motor:** Se utiliza el paquete `listings` con el estilo `estilocodigo` predeterminado y tipografía Courier.
* **Rótulo:** Configurado en español como `Código` (ej. `Código 1: ...`).
* **Ajuste de Línea (Wordwrap):** Activado automáticamente (`breaklines=true`, `breakautoindent=true`) con sangría de continuación (`breakindent=1.5em`) para líneas que superan el margen.
* **Archivos Externos en `codigo/`:** Guardar los programas y scripts en `codigo/` e importarlos modularmente con `\lstinputlisting[language=Python, caption={...}, label={lst:...}]{codigo/archivo.py}`.
* **Bloques Embebidos:** Usar `\begin{lstlisting}[language=Python, caption={...}, label={lst:...}]` indicando el lenguaje apropiado (ej. `Python`, `C`, `C++`, `Java`, `SQL`, `bash`, `HTML`).
* **Código en Línea:** Usar `\lstinline|codigo|` o `\texttt{codigo}`.

### 8. Compilación y Limpieza
* **REGLA:** Utilizar exclusivamente el script ejecutable `./compilar.sh` en lugar de comandos manuales aislados:
  - `./compilar.sh` (compila PDF completo ejecutando `pdflatex` + `biber` + 2x `pdflatex` y conserva temporales).
  - `./compilar.sh --clean` (compila PDF completo y elimina archivos temporales).
  - `./compilar.sh --only-clean` (elimina archivos temporales sin compilar).
  - `./compilar.sh --fast` (compilación rápida de 1 sola pasada pdflatex para redacción continua).
  - `./compilar.sh --check-tablas` (audita la conformidad de tablas con APA 7 y booktabs).

### 9. Estructura y Flujo de la Modalidad Innovación Tecnológica
Este proyecto está configurado para la modalidad de **Innovación Tecnológica**:
* La inclusión principal en `main.tex` carga directamente `capitulos/index.tex`.
* Los 9 capítulos se ensamblan desde `capitulos/index.tex` conectando cada carpeta de capítulo (`capitulos/01_introduccion/` a `capitulos/09_conclusiones_recomendaciones/`).
* Para alimentar el contenido con datos de un proyecto real, se completa la ficha `docs/ficha-proyecto.md` a partir del documento base `docs/proyecto.rtf` o `docs/proyecto.md`, consultando de manera interactiva los datos pendientes al usuario.
* Los metadatos institucionales y del estudiante deben ajustarse en `estilos/configuracion.tex`.

### 10. Uso de Prompts de Apoyo para Agentes (`promts/`)
* **Migración y redacción (`promts/migracion/`):**
  - `crear-contexto.md`: Generación y sincronización de los archivos de contexto Markdown en la raíz (`AGENTS.md`, `GLOSARIO.md`, `ESTILO.md`, `ESTADO.md`, `METODOLOGIA.md`).
  - `ficha-proyecto.md`: Flujo interactivo paso a paso para recopilación estructurada de datos crudos en la ficha intermedia y posterior redacción fundamentada de los 9 capítulos.
  - `copiar-documento.md`: Flujo para la migración directa y literal (verbatim) de textos desde `docs/proyecto.rtf` o `docs/proyecto.md` a la estructura LaTeX modular sin modificar redacción.
* **Revisión y calidad (`promts/revicion/`):** Suite especializada de 16 prompts adaptada a los 9 capítulos de Innovación Tecnológica (BTH RM 0912/2023): estructura general (`01`), capítulo 1 (`01b`), capítulos 2 al 9 modulares (`02` a `09`), auditoría de sincronía global (`10`), estilo y gramática (`11`), citas y bibliografía APA 7 (`12`), y checklist pre-entrega/defensa (`13`).

### 11. Formato de Números, Decimales y Separador de Miles (Norma SI/ISO 80000-1)
* **REGLA:** En todo el proyecto (capítulos, tablas y anexos) se sigue la convención internacional técnica y de la RAE:
  - **Parte decimal:** Usar obligatoriamente **punto (`.`)** (ej. `12.50`, `3.1416`, `98.5%`, `0.75 Bs.`). **PROHIBIDO** el uso de coma (`,`) para decimales (ej. evitar `12,50`).
  - **Separador de miles:** **PROHIBIDO** el uso de comas (`,`) o puntos (`.`) como separadores de millares (ej. evitar `1,000` y `1.000`).
  - **Cifras de 4 dígitos:** Escribir juntas sin espacio ni separador (ej. `1000`, `3500`, `4500.00`, `7700.00`).
  - **Cifras de 5 o más dígitos:** Escribir continuas o con espacio como separador de grupos de tres dígitos (ej. `25000.00` o `25 000.00`, `46 500.00`), nunca con comas ni puntos.

### 12. Listas y Elementos de Enumeración (Prioridad de Viñetas)
* **REGLA:** Priorizar obligatoriamente el uso de viñetas (`\begin{itemize}`) en lugar de listas numeradas (`\begin{enumerate}`).
* **Criterio de Uso:**
  - Emplear siempre el entorno `itemize` para listas de objetivos específicos, conclusiones, recomendaciones, características técnicas, componentes, ventajas, requerimientos y elementos descriptivos generales.
  - Reservar el entorno de lista numerada (`enumerate`) **exclusivamente** para secuencias algorítmicas estrictas, pasos procedimentales ordenados o cronologías donde la numeración correlativa sea indispensable e inherente a la explicación técnica.

### 13. Macros Semánticas Estandarizadas de la Plantilla
* **REGLA:** Utilizar obligatoriamente las macros semánticas provistas en `estilos.sty` y `estilos/caratula.sty` para preservar la coherencia y mantenibilidad del documento:
  - `\capitulopreliminar{Título}`: Capítulos preliminares no numerados con título superior y entrada automática al TOC (`Resumen`, `ANEXOS`), en sustitución de `\chapter*{...}\addcontentsline{...}` manual.
  - `\begin{estilodedicatoria}{Título}...\end{estilodedicatoria}`: Entorno semántico para dedicatoria y agradecimiento (ubica el título y contenido en una misma hoja alineados a la parte inferior sin separación excesiva entre ellos, con alineación derecha, cursiva y registro automático en el TOC).
  - `\seccionanexo{Título}`: Encabezados de secciones de anexos con inclusión automática en el TOC (`\seccionanexo{Anexo A: Modelo Canvas...}`).
  - `\configurarseccionfinal`: Macro global que desactiva numeración de página y cabeceras (`empty`) para Bibliografía y Anexos.
  - `\palabrasclave{...}`, `\keywords{...}`, `\simikuna{...}`: Bloques semánticos normalizados para palabras clave en resúmenes (castellano, extranjero y lengua originaria).
  - `\notatabla{...}`: Formato estandarizado para notas y fuentes al pie de tablas bajo APA 7ma Edición.
  - `\notafigura{...}`: Formato estandarizado para notas y fuentes al pie de figuras e ilustraciones bajo APA 7ma Edición (espaciado `\espacionotafigura`).
  - `\incluirfigura[ancho]{archivo}{Título}{etiqueta}{Nota}`: Macro de alto nivel para inserción estandarizada de ilustraciones con estructura APA 7.
  - `\imprimircaratulabth` (o `\imprimircaratula`): Macro semántica de alto nivel que genera la carátula oficial BTH con marco perimetral opcional, tipografía Times New Roman y proporciones exactas, modularizada en `estilos/caratula.sty`.
  - `\begin{estilocaratulabth}...\end{estilocaratulabth}`: Entorno modular que encapsula la geometría (márgenes carta 3.0 cm / 2.5 cm), tipografía `ptm`, marco y centrado de la carátula oficial.
  - `\insertarmarcobth`: Inserción en background del marco perimetral azul ornamentado en la carátula BTH (gobernado por `\activarmarcobth`).
  - `\institucionportadabth{...}`, `\especialidadportadabth{...}`, `\tituloportadabth{...}`, `\formulagradoportadabth{...}`, `\etiquetapostulantesbth{...}`, `\etiquetatutorbth{...}`, `\tutorportadabth{...}`, `\pieportadabth{...}{...}`: Macros semánticas de diagramación y tipografía para los bloques individuales de la carátula en `estilos/caratula.sty`.
  - `\bloqueinstitucionportada`, `\bloquelogoportada`, `\bloquetituloportada`, `\bloquegradoportada`, `\bloquepostulantesportada`, `\bloquetutorportada`, `\bloquepieportada`: Macros de bloques estructurados con espaciado vertical integrado.
  - `\titulocaratula{...}` y `\subtitulocaratula{...}`: Macros de compatibilidad tipográfica institucional.

### 14. Metodología de la Investigación Aplicada (I+D Tecnológica)
* **REGLA:** El proyecto se estructura bajo el paradigma de **Investigación Aplicada y Desarrollo Tecnológico (I+D)** con diseño pre-experimental (diagnóstico $\rightarrow$ diseño $\rightarrow$ validación empírica $\rightarrow$ contraste antes vs. después):
  - **Operacionalización de Variables:** Identificar con claridad la **Variable Independiente (VI)** (la solución técnica/prototipo en Cap. 4) y las **Variables Dependientes (VD)** (efectos e impactos medibles: eficiencia, tiempos, costos, tasa de fallas, calidad en Cap. 5 y 7).
  - **Instrumentación y Calibración:** Los instrumentos técnicos de medición (sensores, multímetros, balanzas, probetas) deben especificar margen de tolerancia ($\pm\,\%$, resolución), especificaciones del fabricante o calibración; los instrumentos cualitativos (encuestas, entrevistas) deben indicar su criterio de validación o prueba previa.
  - **Muestreo:** Distinguir entre muestra de personas (usuarios, productores, docentes) y unidades experimentales de prueba técnica (lotes de producción, ciclos de operación, réplicas de ensayo).
  - **Hipótesis Tecnológica (Opcional):** Si el tutor o tribunal lo solicita, formular una hipótesis con relación causa-efecto contrastable con datos cuantitativos en el Capítulo 7 y con cierre explícito en el Capítulo 9.
  - **Matriz de Sincronía Transversal de 5 Ejes:** Auditar con el prompt 10 la alineación: *Cap. 2 (Problema/Obj/Hipótesis) ↔ Cap. 4 (Innovación/VI) ↔ Cap. 5 (Método/Instrumentos) ↔ Cap. 7 (Resultados/VD) ↔ Cap. 9 (Conclusiones)*.

---

## 🚫 Archivos Ignorados por Agentes de IA

Para evitar el consumo innecesario de contexto y tokens, los agentes de IA deben ignorar por completo todos los archivos auxiliares generados durante la compilación de LaTeX y los archivos de estado temporal de herramientas de IA.

Estos archivos se han excluido formalmente en los siguientes archivos de configuración del repositorio:
* `.gitignore`: Evita que archivos temporales entren al control de versiones.
* `.cursorignore`: Previene que Cursor indexe archivos compilados y PDFs en su base de conocimiento.
* `.clineignore`: Previene la lectura innecesaria de archivos binarios por Cline.
* `.agentignore`: Regulación neutral para otros motores de IA.

### Lista de Patrones Excluidos:
1. **Temporales de LaTeX:** `*.aux`, `*.log`, `*.toc`, `*.lof`, `*.lot`, `*.out`, `*.bbl`, `*.blg`, `*.run.xml`, `*.bcf`, `*.fdb_latexmk`, `*.fls`, `*.synctex.gz`, `*.upa`, `*.upb`, `*.listing`, `*-blx.bib` (incluyendo `capitulos/**/*.aux`, `preliminares/**/*.aux`, `tablas/**/*.aux`, etc.).
2. **Archivos de Salida Binaria:** `*.pdf`, `main.pdf` (excepto `docs/*.pdf` regulatorios).
3. **Directorios de Agentes/IDEs:** `.antigravitycli/`, `.cline/`, `.cursor/`, `.vscode/`, `.idea/`.
