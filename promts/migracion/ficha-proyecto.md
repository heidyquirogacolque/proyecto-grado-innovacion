# Prompts para completar el proyecto de grado BTH (modalidad Innovación Tecnológica)

Repo: `proyecto-grado-innovacion`. Pensados para pegarse EN ORDEN en un agente con acceso
a archivos (Claude Code, Cursor, Cline, Copilot Chat, Antigravity, etc.) sobre el repo
clonado localmente. Revisa la salida de cada prompt antes de lanzar el siguiente.

---

## 📁 Estructura del Directorio `capitulos/` (Innovación Tecnológica)

El proyecto organiza los 9 capítulos de manera modular bajo el directorio `capitulos/`:

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
│   └── main.tex                                       # Cap. 8 — PROYECTO DE VIDA (redacción directa en main.tex)
└── 09_conclusiones_recomendaciones/
    ├── main.tex                                       # Cap. 9 — CONCLUSIONES Y RECOMENDACIONES
    ├── conclusiones.tex                               #   └ Conclusiones
    └── recomendaciones.tex                            #   └ Recomendaciones
```

---

## Prompt 1 — Cargar `docs/ficha-proyecto.md` desde `docs/proyecto.rtf` o `docs/proyecto.md` y consultar datos pendientes

```
Actúa como asistente de redacción y estructuración de proyectos de grado en modalidad
Innovación Tecnológica. Antes de tocar cualquier archivo, lee AGENTS.md y sigue sus reglas.

1. Localización y lectura del documento base:
   - Busca dentro de la carpeta docs/ el archivo con la información base del proyecto:
     `docs/proyecto.rtf` o `docs/proyecto.md`.
   - Si el archivo es `docs/proyecto.rtf`, extrae y procesa el texto plano limpio,
     descartando etiquetas de formato y comandos de control RTF. Si es `docs/proyecto.md`,
     léelo directamente.

2. Carga inicial de la ficha técnica:
   - Abre `docs/ficha-proyecto.md` y lee detenidamente todos los campos solicitados
     en cada sección (desde la Sección 0 hasta la Sección 9).
   - Vuelca de manera estructurada en `docs/ficha-proyecto.md` todos los datos reales,
     cifras, nombres y especificaciones disponibles en el documento base.
   - Conserva la etiqueta `[DATO PENDIENTE]` únicamente en los campos donde no exista
     información en el documento base.

3. Consulta interactiva de datos pendientes durante la migración:
   - Identifica todos los campos que hayan quedado con `[DATO PENDIENTE]`.
   - No des por terminada la migración dejando datos vacíos: consulta de forma activa
     e interactiva al usuario para completar la información faltante.
   - Presenta las preguntas al usuario de manera clara, estructurada y agrupada por
     bloques temáticos lógicos para facilitar sus respuestas:
     * Bloque Institucional y Preliminares (Sección 0): Título del proyecto, autor(es),
       institución educativa, tutor/asesor, fecha/gestión, dedicatoria y agradecimiento.
     * Bloque Diagnóstico y Problema (Secciones 1 y 2): Contexto geográfico y social y objetivos (general y específicos).
   - Conforme el usuario responda cada consulta, actualiza de inmediato `docs/ficha-proyecto.md`,
     reemplazando los `[DATO PENDIENTE]` por los datos concretos proporcionados.

4. Resumen de estado:
   - Al finalizar las consultas, genera un resumen detallando qué campos fueron completados
     satisfactoriamente y cuáles quedaron pendientes si el usuario indicó no disponer de la cifra aún.
   - No modifiques ningún otro archivo del repositorio en este paso.
```

---

## Prompt 2 — Volcar los datos institucionales a `estilos/configuracion.tex`

```
Lee docs/ficha-proyecto.md (ya completado y validado con el usuario) y estilos/configuracion.tex.

1. Extrae únicamente los datos institucionales/personales consolidados en la Sección 0:
   - Título del proyecto (\tituloproyecto).
   - Nombre(s) del/los autor(es) (\autoruno, \autordos).
   - Datos del autor principal (\emailautoruno, \lugarproyecto).
   - Nombre y cargo del tutor (\tutorproyecto).
   - Institución educativa, departamento/provincia y especialidad (\institucion, \especialidad).
   - Modalidad fijada en "INNOVACIÓN TECNOLÓGICA" (\modalidad).
   - Fecha y gestión académica (\fechaproyecto, \gestionproyecto).

2. Actualiza las macros correspondientes en `estilos/configuracion.tex`, siguiendo la Regla 1 de AGENTS.md:
   nunca quemes (hardcodees) estos datos directamente en los archivos .tex de capítulos,
   preliminares o carátula.

3. Si en la Sección 0 se definieron textos para Dedicatoria y Agradecimiento, actualiza
   `preliminares/dedicatoria.tex` (`\begin{estilodedicatoria}{Dedicatoria}`) y
   `preliminares/agradecimiento.tex` (`\begin{estilodedicatoria}{Agradecimiento}`).
   Si se definieron los resúmenes y palabras clave, actualiza `preliminares/resumen.tex`
   con las macros semánticas `\palabrasclave`, `\keywords` y `\simikuna`.

4. Verifica que en `main.tex` esté activa la inclusión `\input{capitulos/index.tex}`.

5. No modifiques archivos de `capitulos/` en este paso. Muestra el diff de los archivos modificados al terminar.
```

---

## Prompt 3 — Redactar el contenido de los 9 capítulos con los datos de la ficha

```
Lee por completo `docs/ficha-proyecto.md`, `AGENTS.md` y `ESTRUCTURA_CAPITULOS.md`
(sección "Estructura de los 9 Capítulos (capitulos/)").

Redacta el contenido de cada archivo .tex dentro de `capitulos/`, capítulo por
capítulo, usando EXCLUSIVAMENTE la información consolidada en `docs/ficha-proyecto.md`.
No inventes cifras, nombres ni especificaciones que no estén ahí; si excepcionalmente falta
un dato puntual, deja un comentario LaTeX %% FALTA DATO: ... en su lugar.

Recorre en este orden estricto, respetando la estructura modular:

- 01_introduccion/:
  * contexto_general.tex
  * motivacion_pertinencia.tex
  * contribucion_esperada.tex
- 02_planteamiento_problema/:
  * diagnostico.tex
  * identificacion_problema.tex
  * formulacion_problema.tex
  * objetivos.tex
  * justificacion.tex
- 03_marco_referencial/:
  * antecedentes.tex
  * bases_teoricas.tex
  * marco_conceptual.tex
- 04_desarrollo_innovacion/:
  * diseno.tex (incluye tabla de especificaciones técnicas)
  * planificacion.tex (incluye tabla de cronograma)
  * recursos.tex
  * calculo_costos.tex (incluye tabla de costos)
- 05_metodologia/:
  * tipo_investigacion.tex
  * poblacion_muestra.tex
  * tecnicas_instrumentos.tex
  * analisis_datos.tex
- 06_estrategia_mejora/:
  * plan_mejora.tex (incluye tabla de plan de mejora continua)
  * proyeccion_escalamiento.tex
- 07_resultados/:
  * resultados_obtenidos.tex
  * beneficios_impacto.tex
  * comparacion_antes_despues.tex (incluye tabla comparativa antes vs después)
- 08_proyecto_vida/:
  * main.tex
- 09_conclusiones_recomendaciones/:
  * conclusiones.tex
  * recomendaciones.tex

Reglas mientras redactas:
1. Español académico, tono formal e impersonal (tercera persona), normativa APA 7ma Edición
   y lineamientos BTH descritos en AGENTS.md.
2. Respeta el ensamble modular: el main.tex de cada capítulo ya hace \input{capitulos/...}
   a sus secciones; no dupliques \chapter{} dentro de las secciones individuales.
3. Tablas e ilustraciones: Toda información estructurada (especificaciones técnicas,
   cronograma, desglose de costos, plan de mejora, comparación antes/después) debe
   alojarse como tabla independiente en tablas/ (siguiendo los archivos _ejemplo.tex con booktabs)
   e importarse con \input{tablas/...}.
4. Citas y bibliografía: Registra las fuentes en bibliografia/referencias.bib bajo estándar
   BibLaTeX APA 7 y cítalas en el texto con \parencite{} o \textcite{}.
5. No toques estilos/, preliminares/ ni configuracion.tex en este paso.
6. Al terminar cada capítulo, lista las secciones completadas y las que hayan quedado con %% FALTA DATO.
7. Reemplazo de contenido: Sustituye el texto de plantilla/guía de cada archivo .tex con la nueva redacción formal fundamentada, conservando intactas las etiquetas `\section{...}` y `\label{...}` existentes para preservar la integridad de la estructura y referencias cruzadas.
8. Prioridad de viñetas: Prioriza obligatoriamente `\begin{itemize}` sobre `\begin{enumerate}`, reservando este último solo para secuencias algorítmicas o procedimentales estrictas.
9. Formato numérico (SI/ISO 80000-1): Usa punto decimal (ej. 12.50, 98.5%), nunca comas decimales ni comas/puntos de miles (cifras de 4 dígitos juntas: 4500.00, 5 o más con espacio: 25 000.00).
10. Notas en tablas: Usa la macro semántica `\notatabla{Fuente: ...}` para notas o procedencia al pie de tablas APA 7.

Al terminar los 9 capítulos, entrega un resumen general del contenido redactado.
```

---

## Prompt 4 — Compilar y validar el documento final

```
Ejecuta la compilación de prueba y verificación de consistencia:

1. Ejecuta primero `./compilar.sh --fast` para verificar rápidamente que no existan
   errores de sintaxis LaTeX, comandos no cerrados o rutas rotas.
2. Si la compilación rápida pasa sin errores, ejecuta `./compilar.sh --clean` para realizar
   el ciclo completo de 4 pasos (pdflatex + biber + pdflatex x2) y limpiar archivos auxiliares.
3. Notifica el resultado final: confirma la generación exitosa de `main.pdf`, el conteo total
   de páginas e informa si se resolvió el índice de contenidos, bibliografía y referencias cruzadas.
```
