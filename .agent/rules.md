# Antigravity Rules & Guidelines

Este proyecto de LaTeX modular sigue pautas estrictas para mantener la consistencia, modularidad y cumplimiento de la normativa del Bachillerato Técnico Humanístico (BTH - RM 0912/2023) en Bolivia bajo la modalidad de **Innovación Tecnológica**.

> [!IMPORTANT]
> Consulta siempre la especificación principal en [AGENTS.md](AGENTS.md) y la estructura de capítulos en [ESTRUCTURA_CAPITULOS.md](ESTRUCTURA_CAPITULOS.md) antes de crear o modificar archivos.

---

## 🎯 Resumen de Reglas Críticas para Antigravity

1. **Variables Centralizadas:**
   - **NUNCA** quemes nombres de autores, tutores, institución, especialidad o título en archivos `.tex` (`caratula.tex` o capítulos).
   - Toda modificación de metadatos, espaciado de párrafos (`\espacioposteriorparrafo`, `\sangriaprimeralinea`), diagramación (`\espaciosuperiordedicatoria`), figuras (`\anchuraimagenpredeterminada`, `\estilorotuloapa`) y portada (`\activarmarcobth`, `\rutamarcobth`, `\rutalogobth`, `\formulagradobth`) se realiza en [estilos/configuracion.tex](estilos/configuracion.tex). Soporta 1 o 2 autores dinámicamente (`\autoruno`, `\autordos`).
   - Los campos de C.I. del estudiante fueron removidos y no forman parte de la plantilla.

2. **Estructura Modular de Capítulos (Innovación Tecnológica):**
   - Todos los capítulos se encuentran en [capitulos/](capitulos/) (Capítulos 1 al 9).
   - Cada capítulo reside en su propia subcarpeta (`01_introduccion/` a `09_conclusiones_recomendaciones/`) con su respectivo `main.tex` que ensambla las secciones.
   - Las inclusiones dentro de cada capítulo usan el prefijo `capitulos/` (ej. `\input{capitulos/02_planteamiento_problema/diagnostico}`).

3. **Estilo de Títulos APA 7ma Edición Adaptado:**
   - Todos los títulos y enlaces internos (TOC, LOF, LOT, referencias) en **negro** (`linkcolor=black`).
   - Interlineado sencillo (`1.0` / `\setstretch{1.0}`) para títulos de Nivel 1 al 4.
   - Nivel 1 (`\chapter`): Alineado a la **izquierda**, sin prefijo de palabra "Capítulo" (ej. `1. INTRODUCCIÓN`), con espaciado anterior a `-15pt` en `titlesec`.
   - Nivel 2 (`\section`): Alineado a la izquierda, Negrita.
   - Nivel 3 (`\subsection`): Alineado a la izquierda, Negrita y Cursiva.
   - Nivel 4 (`\subsubsection`): Sangría de 1.27 cm, Negrita, tipo *run-in* terminando con punto.
   - Nivel 5 (`\paragraph`): Sangría de 1.27 cm, Negrita y Cursiva, tipo *run-in* terminando con punto.

4. **Encabezados y Pies de Página:**
   - Encabezados deshabilitados (`headrulewidth=0pt`, sin texto superior).
   - Pies de página: numeración arábiga centrada abajo (`\cfoot{\thepage}`) en Capítulos 1 al 9.
   - Páginas preliminares en números romanos (`\pagenumbering{roman}`).
   - Bibliografía y Anexos: no numerados (`numberless`) y limpios de numeración de página y cabeceras mediante `\configurarseccionfinal`.

5. **Bibliografía (BibLaTeX + Biber):**
   - Motor `biblatex` con `style=apa` y backend `biber` sobre [bibliografia/referencias.bib](bibliografia/referencias.bib).
   - En texto: `\parencite{clave}` para citas parentéticas *(Apellido, Año)* y `\textcite{clave}` para narrativas *Apellido (Año)*.
   - Inclusión en `main.tex`: `\printbibliography[heading=bibintoc, title={Bibliografía}]`.
   - Anexos estructurados con `\seccionanexo{Título del Anexo}` y ensamble raíz mediante `\capitulopreliminar{ANEXOS}`.

6. **Código Fuente y Algoritmos:**
   - Motor `listings` con estilo `estilocodigo` predeterminado y tipografía Courier (`courier`).
   - Guardar scripts en [codigo/](codigo/) e importar con:
     `\lstinputlisting[language=Python, caption={...}, label={lst:...}]{codigo/archivo.py}`
   - Ajuste automático de línea (`breaklines=true`) y rótulos en español (`Código`).

7. **Tablas e Ilustraciones:**
   - Tablas independientes en [tablas/](tablas/) e importar vía `\input{tablas/archivo.tex}`.
   - Normas APA 7 para tablas: usar `booktabs` (`\toprule`, `\midrule`, `\bottomrule`), PROHIBIDO el uso de líneas verticales (`|`) y de `\hline`. El `\caption` debe ubicarse obligatoriamente arriba de la tabla y notas al pie con `\notatabla{Fuente: ...}`.
   - Para tablas anchas o con descripciones extensas, usar `tabularx` con columnas auto-ajustables `L`, `C`, `R` o `X` para evitar desbordamientos del margen derecho (`\textwidth`).
   - Auditar tablas con `./compilar.sh --check-tablas` (o [scripts/verificar_tablas.py](scripts/verificar_tablas.py)).
   - Figuras e imágenes en [imagenes/](imagenes/) (.png, .jpg, .pdf) bajo APA 7: rótulo y título arriba (`\caption`), gráfico centrado (`\centering`), nota abajo (`\notafigura{Fuente: ...}`) y ancho configurable `\anchuraimagenpredeterminada`. Inserción ágil mediante `\incluirfigura[ancho]{archivo}{Título}{etiqueta}{Nota}` o subfiguras con `subcaption` (guía en [imagenes/README.md](imagenes/README.md) y plantilla [imagenes/figura_ejemplo.tex](imagenes/figura_ejemplo.tex)).

8. **Control de Silabación:**
   - División de palabras desactivada globalmente (`\hyphenpenalty=10000`, `\exhyphenpenalty=10000`).

9. **Compilación y Limpieza:**
   - Usar siempre el script ejecutable [compilar.sh](compilar.sh):
     * `./compilar.sh` (compilación completa de 4 pasos).
     * `./compilar.sh --clean` (compilación completa + eliminación de temporales).
     * `./compilar.sh --fast` (compilación rápida de 1 sola pasada pdflatex).
     * `./compilar.sh --only-clean` (limpieza de temporales sin compilar).
     * `./compilar.sh --check-tablas` (auditoría de tablas APA 7 y diagramación).

10. **Modalidad y Ensamble:**
    - Modalidad activa: **Innovación Tecnológica** (Capítulos 1 al 9).
    - Ensamble raíz en [main.tex](main.tex) vía `\input{capitulos/index.tex}`.
    - Metadatos institucionales y del estudiante centralizados en [estilos/configuracion.tex](estilos/configuracion.tex).
    - Ficha de datos del proyecto en [docs/ficha-proyecto.md](docs/ficha-proyecto.md) (alimentada desde `docs/proyecto.rtf` o `docs/proyecto.md` y consultas interactivas).
    - Preliminares: [agradecimiento.tex](preliminares/agradecimiento.tex) y [dedicatoria.tex](preliminares/dedicatoria.tex) utilizan el entorno `\begin{estilodedicatoria}{Título}` (alineado a la parte inferior en una misma hoja, sin separación entre título y contenido, con registro automático en el TOC).
    - Resúmenes en [preliminares/resumen.tex](preliminares/resumen.tex) formatean palabras clave con `\palabrasclave{...}`, `\keywords{...}` y `\simikuna{...}`.
    - Portada oficial BTH modular en [preliminares/caratula.tex](preliminares/caratula.tex) invocando `\imprimircaratulabth` (estilos encapsulados en [estilos/caratula.sty](estilos/caratula.sty), marco decorativo perimetral azul gobernado por `\activarmarcobth`).

11. **Prompts de Apoyo (`promts/`):**
    - Guiar la redacción con [promts/migracion/ficha-proyecto.md](promts/migracion/ficha-proyecto.md).
    - Revisar consistencia y rigor académico con la suite de 16 prompts modulares en [promts/revicion/](promts/revicion/) adaptada a los 9 capítulos de Innovación Tecnológica (BTH RM 0912/2023).

12. **Formato de Números, Decimales y Separador de Miles (Norma SI/ISO 80000-1):**
    - **Parte decimal:** Usar obligatoriamente punto (`.`) (ej. `12.50`, `3.1416`, `98.5%`, `0.75`). **PROHIBIDO** el uso de coma (`,`) en decimales.
    - **Separador de miles:** **PROHIBIDO** el uso de comas (`,`) o puntos (`.`) como separadores de millares (evitar `1,000` y `1.000`).
    - Cifras de 4 dígitos se escriben juntas sin separación (`1000`, `3500`, `4500.00`, `7700.00`).
    - Cifras de 5 o más dígitos se escriben continuas o con espacio (`25 000.00` o `25000.00`, `46 500.00`), nunca con comas ni puntos.

13. **Listas y Elementos de Enumeración (Prioridad de Viñetas):**
    - Priorizar obligatoriamente el uso del entorno de viñetas (`\begin{itemize}`) frente a listas numeradas (`\begin{enumerate}`).
    - Emplear siempre `itemize` para listar objetivos específicos, conclusiones, recomendaciones, características técnicas, componentes y elementos descriptivos generales.
    - Reservar `\begin{enumerate}` exclusivamente para secuencias algorítmicas estrictas, cronologías o pasos procedimentales secuenciales donde la numeración sea indispensable.

14. **Macros Semánticas Estandarizadas de la Plantilla:**
    - Utilizar obligatoriamente las macros semánticas provistas en `estilos.sty` y `estilos/caratula.sty`:
      * `\capitulopreliminar{Título}`: Capítulos preliminares y Anexos sin numerar con título superior agregados a TOC (`Resumen`, `ANEXOS`).
      * `\begin{estilodedicatoria}{Título}...\end{estilodedicatoria}`: Entorno semántico para dedicatoria y agradecimiento al pie en una sola hoja sin separación entre título y texto.
      * `\seccionanexo{Título}`: Encabezados de secciones de anexos agregados a TOC.
      * `\configurarseccionfinal`: Estilo de página limpio (`empty`) para bibliografía y anexos.
      * `\palabrasclave{...}`, `\keywords{...}`, `\simikuna{...}`: Bloques semánticos de palabras clave.
      * `\notatabla{...}`: Notas al pie de tablas bajo APA 7.
      * `\notafigura{...}`: Notas al pie de figuras bajo APA 7 (espaciado `\espacionotafigura`).
      * `\incluirfigura[ancho]{archivo}{Título}{etiqueta}{Nota}`: Macro de alto nivel para figuras e imágenes según APA 7.
      * `\imprimircaratulabth` (o `\imprimircaratula`): Generación automática modular de la carátula oficial BTH (definida en `estilos/caratula.sty`).
      * `\begin{estilocaratulabth}...\end{estilocaratulabth}`: Entorno modular de carátula con geometría (3.0 cm / 2.5 cm) y tipografía Times New Roman `ptm`.
      * `\insertarmarcobth`: Inserción del marco perimetral azul en segundo plano de la portada BTH.
      * `\institucionportadabth`, `\especialidadportadabth`, `\tituloportadabth`, `\formulagradoportadabth`, `\etiquetapostulantesbth`, `\etiquetatutorbth`, `\tutorportadabth`, `\pieportadabth`: Macros semánticas de formato en `estilos/caratula.sty`.
      * `\bloqueinstitucionportada`, `\bloquelogoportada`, `\bloquetituloportada`, `\bloquegradoportada`, `\bloquepostulantesportada`, `\bloquetutorportada`, `\bloquepieportada`: Macros de bloques estructurados con espaciado vertical integrado.
      * `\titulocaratula{...}` y `\subtitulocaratula{...}`: Macros de compatibilidad tipográfica.

15. **Metodología de la Investigación Aplicada (I+D Tecnológica):**
    - Identificar explícitamente la **Variable Independiente (VI)** (la solución tecnológica en Cap. 4) y las **Variables Dependientes (VD)** (efectos medidos: eficiencia, tiempos, costos, precisión en Cap. 5 y 7).
    - En mediciones técnicas, exigir especificaciones de calibración y márgenes de tolerancia en los instrumentos; en encuestas, verificar su validación previa.
    - Diferenciar población/muestra de personas de unidades experimentales de prueba técnica (lotes, ciclos, réplicas).
    - Evaluar hipótesis tecnológica (si el tutor la requiere) y contrastarla empíricamente con datos de pruebas piloto en el Cap. 7 y conclusiones del Cap. 9.
    - Auditar la sincronía transversal de 5 ejes con el prompt 10: *Cap. 2 (Problema/Obj/Hipótesis) ↔ Cap. 4 (Innovación/VI) ↔ Cap. 5 (Método/Instrumentos) ↔ Cap. 7 (Resultados/VD) ↔ Cap. 9 (Conclusiones)*.

