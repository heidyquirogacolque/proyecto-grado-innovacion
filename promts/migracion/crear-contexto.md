# Prompt para Generar Archivos de Contexto Markdown del Proyecto

> **Propósito:** Generar o actualizar los archivos de contexto Markdown en la raíz del repositorio (`AGENTS.md`, `GLOSARIO.md`, `ESTILO.md`, `ESTADO.md`, `METODOLOGIA.md`) para sincronizar el trabajo de agentes de inteligencia artificial y desarrolladores con la estructura real del proyecto LaTeX bajo la modalidad de **Innovación Tecnológica** (BTH RM 0912/2023).

---

## 📋 Instrucción Principal

Actúa como especialista en ingeniería de prompts, documentación técnica y estructuración de proyectos de grado en LaTeX. Tu tarea es generar los archivos de contexto Markdown en la raíz del repositorio basándote en los datos del proyecto, la arquitectura modular de 9 capítulos y las convenciones institucionales descritas a continuación.

---

## 📌 Datos del Proyecto

- **Repositorio:** `proyecto-grado-innovacion`
- **Nombre de la Plantilla:** Proyecto de Grado BTH — Innovación Tecnológica (LaTeX Modular)
- **Normativa Oficial:** Reglamento de Graduación del Bachillerato Técnico Humanístico (BTH, Resolución Ministerial RM 0912/2023 en Bolivia)
- **Modalidad de Graduación:** **Innovación Tecnológica** (Estructura formal de 9 capítulos)
- **Unidad Educativa / Institución:** [INSTITUCIÓN / U.E., ej. Módulo Tecnológico Productivo San Julián]
- **Especialidad Técnica BTH:** [ESPECIALIDAD, ej. Sistemas Informáticos / Electromecánica / Electrónica]
- **Título del Proyecto:** [TÍTULO DEL PROYECTO]
- **Subtítulo / Prototipo:** [SUBTÍTULO O NOMBRE DEL PROTOTIPO/SISTEMA]
- **Autor(es):** [AUTOR 1] / [AUTOR 2 (opcional)]
- **Tutor / Asesor:** [NOMBRE DEL TUTOR] ([GRADO/CARGO])
- **Localidad y Gestión:** [LOCALIDAD, ej. San Julián - Santa Cruz - Bolivia] | [GESTIÓN, ej. 2026]
- **Objetivo General:** [OBJETIVO GENERAL DEL PROYECTO]
- **Objetivos Específicos:**
  - [Objetivo específico 1: Diagnóstico / Requerimientos]
  - [Objetivo específico 2: Diseño y dimensionamiento técnico]
  - [Objetivo específico 3: Construcción / Implementación del prototipo]
  - [Objetivo específico 4: Pruebas piloto y validación funcional/económica]
- **Tema / Dominio Técnico:** [ej. Internet de las Cosas (IoT), automatización, desarrollo de software, robótica, agroindustria]
- **Estilo de Citación y Bibliografía:** `biblatex` con estilo `apa` (APA 7ma Edición), backend `biber` y paquete `csquotes`
- **Tipografía y Formato:** Arial 11pt (`helvet`), interlineado 1.5 (`\onehalfspacing`), espaciado entre párrafos 8pt (`parskip`), Courier (`courier`) para código, papel Carta (`letterpaper`), márgenes (Izquierdo: 3.0 cm, Superior/Inferior/Derecho: 2.5 cm)
- **Motor y Script de Compilación:** `./compilar.sh` (`pdflatex` + `biber`), con opciones `--fast`, `--clean`, `--only-clean`, `--check-tablas`

---

## 📁 Estructura Real de Archivos y Carpetas del Repositorio

El proyecto utiliza una estructura modular donde cada capítulo, tabla, imagen y anexo se organiza de forma independiente:

```text
proyecto-grado-innovacion/
├── main.tex                                # Entrada principal de compilación LaTeX (\input{capitulos/index.tex})
├── README.md                               # Guía del usuario para compilar y usar la plantilla
├── AGENTS.md                               # Instrucciones, reglas y lineamientos para Agentes de IA
├── ESTRUCTURA_CAPITULOS.md                 # Detalle temático y archivos de los 9 capítulos de Innovación Tecnológica
├── compilar.sh                             # Script ejecutable de compilación (pdflatex + biber) y limpieza
├── estilos/
│   ├── estilos.sty                         # Estilos, carga de paquetes (biblatex-apa, listings), títulos APA 7
│   ├── configuracion.tex                   # Variables centralizadas de autor(es), título, tutor, institución y modalidad
│   └── caratula.sty                        # Estilos, tipografía (Times New Roman), geometría y diagramación de la carátula BTH
├── preliminares/                           # Hojas frontales (numeración romana)
│   ├── caratula.tex                        # Portada oficial BTH modular (\imprimircaratulabth)
│   ├── dedicatoria.tex                     # Dedicatorias (\begin{estilodedicatoria}{Dedicatoria})
│   ├── agradecimiento.tex                  # Agradecimientos (\begin{estilodedicatoria}{Agradecimiento})
│   └── resumen.tex                         # Resúmenes (\capitulopreliminar, \palabrasclave, \keywords, \simikuna)
├── capitulos/                              # Modalidad: Innovación Tecnológica (Capítulos 1 al 9)
│   ├── index.tex                           # Ensamble maestro de los 9 capítulos
│   ├── 01_introduccion/                    # Cap. 1: main.tex, contexto_general.tex, motivacion_pertinencia.tex, contribucion_esperada.tex
│   ├── 02_planteamiento_problema/          # Cap. 2: main.tex, diagnostico.tex, identificacion_problema.tex, formulacion_problema.tex, objetivos.tex, justificacion.tex
│   ├── 03_marco_referencial/               # Cap. 3: main.tex, antecedentes.tex, bases_teoricas.tex, marco_conceptual.tex
│   ├── 04_desarrollo_innovacion/           # Cap. 4: main.tex, diseno.tex, planificacion.tex, recursos.tex, calculo_costos.tex
│   ├── 05_metodologia/                     # Cap. 5: main.tex, tipo_investigacion.tex, poblacion_muestra.tex, tecnicas_instrumentos.tex, analisis_datos.tex
│   ├── 06_estrategia_mejora/               # Cap. 6: main.tex, plan_mejora.tex, proyeccion_escalamiento.tex
│   ├── 07_resultados/                      # Cap. 7: main.tex, resultados_obtenidos.tex, beneficios_impacto.tex, comparacion_antes_despues.tex
│   ├── 08_proyecto_vida/                   # Cap. 8: main.tex (redacción directa)
│   └── 09_conclusiones_recomendaciones/    # Cap. 9: main.tex, conclusiones.tex, recomendaciones.tex
├── tablas/                                 # Tablas independientes importadas vía \input{tablas/...}
│   ├── README.md                           # Guía para estructurar tablas APA 7 con booktabs
│   ├── tabla_ejemplo.tex                   # Plantilla base de tabla
│   ├── especificaciones_tecnicas_ejemplo.tex # Matriz de especificaciones técnicas (Cap. 4)
│   ├── cronograma_ejemplo.tex              # Cronograma de actividades por fases (Cap. 4)
│   ├── costos_ejemplo.tex                  # Estructura y desglose de costos (Cap. 4)
│   ├── plan_mejora_ejemplo.tex             # Matriz del plan de mejora continua (Cap. 6)
│   └── comparacion_antes_despues_ejemplo.tex # Matriz de comparación antes vs después (Cap. 7)
├── codigo/                                 # Código fuente y scripts (.py, .cpp, .ino, .sql, etc.)
│   ├── README.md                           # Guía para almacenar e importar código externo
│   └── ejemplo_controlador.py              # Script importable vía \lstinputlisting
├── scripts/                                # Scripts de utilidad y validación
│   └── verificar_tablas.py                 # Auditoría de tablas APA 7 y prevención de desbordamientos
├── imagenes/                               # Gráficos, diagramas y logotipos
│   ├── README.md                           # Instrucciones para la gestión de recursos gráficos
│   ├── figura_ejemplo.tex                  # Plantilla modular de figura bajo APA 7
│   ├── diagrama_proceso_ejemplo.png        # Diagrama de flujo técnico (300 DPI)
│   ├── marco_portada_bth.png               # Marco decorativo perimetral azul de la portada BTH
│   └── logo_bth.png                        # Logotipo institucional
├── bibliografia/                           # Bibliografía BibLaTeX (APA 7ma Edición)
│   └── referencias.bib                     # Base de datos de referencias (.bib) formateada en APA 7
├── anexos/                                 # Apéndices del documento
│   ├── README.md                           # Guía para añadir y estructurar anexos
│   ├── index.tex                           # Ensamble de anexos con \capitulopreliminar{ANEXOS}
│   ├── anexo_a_canvas.tex                  # Anexo A: Modelo Canvas (\seccionanexo)
│   ├── anexo_b_fichas_tecnicas.tex         # Anexo B: Cotizaciones y fichas técnicas (\seccionanexo)
│   └── anexo_c_codigo_fuente.tex           # Anexo C: Código fuente importado (\seccionanexo)
├── promts/                                 # Prompts de apoyo y guías de revisión para agentes de IA
│   ├── migracion/                          # crear-contexto.md, ficha-proyecto.md, copiar-documento.md
│   └── revicion/                           # Suite de 16 prompts de revisión temática y checklist pre-defensa
└── docs/                                   # Regulaciones oficiales y documentos fuente
    ├── REGLAMENTO_BTH__RM_0912_2023.pdf    # Reglamento Ministerial oficial RM 0912/2023
    ├── ficha-proyecto.md                   # Ficha de datos y requerimientos del proyecto
    ├── proyecto.md                         # Documento base en texto/Markdown
    └── proyecto.rtf                        # Documento base en formato RTF
```

---

## 🛠️ Archivos de Contexto a Crear / Actualizar

Genera o actualiza en la raíz del proyecto los siguientes 5 archivos Markdown:

---

### 1. `AGENTS.md` (en la raíz)
Debe definir con rigor las directrices para cualquier agente de IA:
- **Resumen del Proyecto:** Nombre, objetivo, marco normativo (BTH RM 0912/2023) y modalidad de Innovación Tecnológica en 9 capítulos.
- **Stack y Formato:** LaTeX `report`, `biblatex-apa` (Biber), Arial 11pt, interlineado 1.5, espaciado de párrafos 8pt (`parskip`), márgenes carta (3.0 cm izq / 2.5 cm otros).
- **Estructura de Directorios:** Árbol completo del repositorio explicando el propósito de cada carpeta y archivo modular.
- **Reglas Críticas de la IA:**
  1. *Parametrización:* Prohibido hardcodear datos personales o institucionales en archivos `.tex`; centralizarlos en `estilos/configuracion.tex`.
  2. *Modularidad:* Respetar el ensamble por capítulos y subarchivos `capitulos/XX_nombre/subarchivo.tex`.
  3. *Títulos APA 7:* Formato de Nivel 1 a 5, alineación a la izquierda y color negro.
  4. *Tablas:* Uso estricto de `booktabs` (`\toprule`, `\midrule`, `\bottomrule`), sin líneas verticales (`|`) ni `\hline`, caption arriba y macro `\notatabla{...}` abajo.
  5. *Figuras:* Caption arriba, imagen centrada y macro `\notafigura{...}` abajo.
  6. *Código Fuente:* Uso de `listings` con estilo `estilocodigo` y `\lstinputlisting`.
  7. *Formato Numérico (SI/ISO 80000-1):* Punto decimal (`12.50`), sin separador de miles en 4 dígitos (`4500.00`) y espacio en 5+ dígitos (`25 000.00`).
  8. *Prioridad de Viñetas:* Priorizar obligatoriamente `itemize` sobre `enumerate`.
  9. *Sección "No tocar sin confirmar":* Proteger `estilos/estilos.sty`, `estilos/caratula.sty` y la diagramación oficial.
- **Comandos de Compilación:** `./compilar.sh`, `./compilar.sh --fast`, `./compilar.sh --clean`, `./compilar.sh --check-tablas`.

---

### 2. `GLOSARIO.md`
Tabla con columnas: `Término | Definición Técnica / Contextual | Forma Correcta de Escribirlo / Uso en el Documento`.
Debe incluir:
- **Términos Normativos e Institucionales:** Bachillerato Técnico Humanístico (BTH), Resolución Ministerial RM 0912/2023, Innovación Tecnológica, Proyecto de Grado, Módulo Tecnológico Productivo.
- **Términos Metodológicos y de Innovación:** Prototipo funcional, prueba piloto, validación técnica, escalamiento tecnológico, plan de mejora continua, modelo Canvas, estudio de costos.
- **Términos Técnicos Específicos del Dominio:** Microcontrolador, microprocesador, Internet de las Cosas (IoT), backend, frontend, API REST, firmware, base de datos relacional, telemetría, actuador, sensor (según el área del proyecto).

---

### 3. `ESTILO.md`
Guía editorial y de redacción académica:
- **Registro y Tono:** Registro académico formal, voz impersonal (tercera persona), precisión léxica y objetividad científica.
- **Tiempos Verbales por Capítulo:**
  - *Capítulo 1 (Introducción):* Presente para contexto actual, futuro/presente para contribución esperada.
  - *Capítulo 2 (Planteamiento del Problema):* Presente para diagnóstico de la problemática, infinitivo para objetivos.
  - *Capítulo 3 (Marco Referencial):* Pretérito para antecedentes de autores previos, presente para fundamentos teóricos y normativos vigentes.
  - *Capítulo 4 (Desarrollo de la Innovación):* Pretérito/impersonal descriptivo para procesos ejecutados, presente para especificaciones técnicas y costos.
  - *Capítulo 5 (Metodología):* Pretérito descriptivo para diseño y técnicas aplicadas.
  - *Capítulo 6 (Estrategia de Mejora):* Presente y futuro propositivo para proyecciones y planes de mejora.
  - *Capítulo 7 (Resultados):* Pretérito para pruebas realizadas y datos recolectados, presente para análisis de impacto.
  - *Capítulo 8 (Proyecto de Vida):* Presente reflexivo y futuro para aspiraciones, competencias y compromiso profesional.
  - *Capítulo 9 (Conclusiones y Recomendaciones):* Pretérito/presente para conclusiones respecto a objetivos, condicional o infinitivo propositivo para recomendaciones.
- **Normas Numéricas y Símbolos:** Uso estricto de punto decimal según ISO 80000-1 (`15.75 Bs.`, `99.2%`), escritura de magnitudes con espacio no separable (`\ ` o `~`), tablas APA 7 con `\notatabla`.
- **Estructura de Citas APA 7:** Cita parentética `\parencite{clave}` y cita narrativa `\textcite{clave}`.

---

### 4. `ESTADO.md`
Matriz de seguimiento y control de completitud de todos los archivos del documento.
Tabla con columnas: `Capítulo / Sección | Archivo Fuente (.tex) | Estado (No iniciado / En progreso / Completo / En revisión) | Pendientes / Notas | Última Actualización`.

Debe desglosar los 9 capítulos y secciones preliminares y finales:
- **Páginas Preliminares:** `preliminares/caratula.tex`, `preliminares/dedicatoria.tex`, `preliminares/agradecimiento.tex`, `preliminares/resumen.tex`.
- **Capítulo 1 (Introducción):** `01_introduccion/contexto_general.tex`, `motivacion_pertinencia.tex`, `contribucion_esperada.tex`.
- **Capítulo 2 (Planteamiento del Problema):** `02_planteamiento_problema/diagnostico.tex`, `identificacion_problema.tex`, `formulacion_problema.tex`, `objetivos.tex`, `justificacion.tex`.
- **Capítulo 3 (Marco Referencial):** `03_marco_referencial/antecedentes.tex`, `bases_teoricas.tex`, `marco_conceptual.tex`.
- **Capítulo 4 (Desarrollo de la Innovación):** `04_desarrollo_innovacion/diseno.tex`, `planificacion.tex`, `recursos.tex`, `calculo_costos.tex`.
- **Capítulo 5 (Metodología):** `05_metodologia/tipo_investigacion.tex`, `poblacion_muestra.tex`, `tecnicas_instrumentos.tex`, `analisis_datos.tex`.
- **Capítulo 6 (Estrategia de Mejora y Proyección):** `06_estrategia_mejora/plan_mejora.tex`, `proyeccion_escalamiento.tex`.
- **Capítulo 7 (Resultados):** `07_resultados/resultados_obtenidos.tex`, `beneficios_impacto.tex`, `comparacion_antes_despues.tex`.
- **Capítulo 8 (Proyecto de Vida):** `08_proyecto_vida/main.tex`.
- **Capítulo 9 (Conclusiones y Recomendaciones):** `09_conclusiones_recomendaciones/conclusiones.tex`, `recomendaciones.tex`.
- **Bibliografía y Anexos:** `bibliografia/referencias.bib`, `anexos/anexo_a_canvas.tex`, `anexos/anexo_b_fichas_tecnicas.tex`, `anexos/anexo_c_codigo_fuente.tex`.

---

### 5. `METODOLOGIA.md`
Resumen metodológico reutilizable transversal:
- **Enfoque Metodológico:** Enfoque tecnológico-aplicado / mixto (cualitativo y cuantitativo).
- **Tipo y Nivel de Investigación:** Investigación aplicada, descriptiva y experimental/propositiva orientada a la innovación tecnológica.
- **Población y Muestra de Validación:** Definición de beneficiarios directos, usuarios de prueba y tamaño muestral para pruebas piloto.
- **Técnicas e Instrumentos:** Fichas de observación técnica, protocolos de prueba de laboratorio/campo, encuestas de percepción/usabilidad, matrices de calibración y análisis de costos.
- **Métricas e Indicadores de Rendimiento:** Indicadores de eficiencia técnica (tiempo de respuesta, precisión, consumo energético), métricas operativas y relación costo-beneficio.

---

## 🎯 Instrucciones Finales

1. Utiliza sintaxis Markdown estándar, limpia y estructurada con encabezados jerárquicos `##` y `###`.
2. No inventes datos que no hayan sido suministrados; utiliza placeholders claros `[DATO PENDIENTE]` o `[PENDIENTE]` donde falte información por parte del usuario.
3. Al finalizar la generación o actualización, presenta un reporte resumido indicando:
   - Los archivos creados o actualizados.
   - La lista de placeholders pendientes de definición por el usuario.
   - El estado de alineación con la estructura de 9 capítulos de Innovación Tecnológica (RM 0912/2023).
