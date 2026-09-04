# Proyecto de Grado BTH — Innovación Tecnológica (LaTeX Modular)

Este proyecto proporciona una estructura modular, organizada y escalable para la redacción de proyectos de grado y tesis técnicas bajo la modalidad de **Innovación Tecnológica**, en estricto cumplimiento del **Reglamento de Graduación del Bachillerato Técnico Humanístico (BTH)** en Bolivia (Resolución Ministerial RM 0912/2023) y contextos académicos utilizando **LaTeX**.

---

## 📁 Descripción de la Estructura del Proyecto

El proyecto está estructurado de manera modular para separar la configuración de metadatos, el contenido de los 9 capítulos de innovación tecnológica, las tablas independientes, el código fuente, las ilustraciones, la bibliografía, los prompts de apoyo y la documentación oficial.

```text
proyecto-grado-innovacion/
├── main.tex                                # Archivo raíz que ensambla y compila el documento (\input{capitulos/index.tex})
├── README.md                               # Guía general de uso y comandos de compilación (este archivo)
├── AGENTS.md                               # Directrices y normas para agentes de IA
├── ESTRUCTURA_CAPITULOS.md                 # Detalle temático de los 9 capítulos de Innovación Tecnológica
├── compilar.sh                             # Script de compilación y limpieza (soporta --clean, --fast, etc.)
├── estilos/                                # Paquete y configuraciones de diseño de LaTeX
│   ├── estilos.sty                         # Archivo de estilos (márgenes, fuentes, espaciados y paquetes)
│   ├── configuracion.tex                   # Metadatos centralizados (título, autor(es), tutor, institución, modalidad)
│   └── caratula.sty                        # Estilos y diagramación modular de la Carátula Oficial BTH
├── preliminares/                           # Hojas preliminares con numeración romana
│   ├── caratula.tex                        # Portada oficial BTH modular (\imprimircaratulabth, marco azul opcional)
│   ├── agradecimiento.tex                  # Página de agradecimientos (\begin{estilodedicatoria}{Agradecimiento})
│   ├── dedicatoria.tex                     # Página de dedicatoria (\begin{estilodedicatoria}{Dedicatoria})
│   └── resumen.tex                         # Resumen (\capitulopreliminar, \palabrasclave, \keywords, \simikuna)
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
├── tablas/                                 # Tablas independientes e importables mediante \input
│   ├── README.md                           # Guía de diseño de tablas APA 7 con booktabs
│   ├── tabla_ejemplo.tex                   # Ejemplo general de tabla
│   ├── estudio_mercado_ejemplo.tex         # Matriz/Tabla de mercado
│   ├── estructura_organizacional_ejemplo.tex # Matriz de estructura organizacional, cargos y remuneraciones
│   ├── inversiones_ejemplo.tex             # Plan y presupuesto de inversiones
│   ├── costos_produccion_ejemplo.tex       # Análisis de costos de producción
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
├── scripts/                                # Scripts de utilidad y validación
│   └── verificar_tablas.py                 # Auditoría de tablas APA 7 y prevención de desbordamientos
├── imagenes/                               # Repositorio de recursos gráficos e ilustraciones
│   ├── README.md                           # Guía detallada para figuras e imágenes según APA 7
│   ├── figura_ejemplo.tex                  # Plantilla modular de figura bajo APA 7
│   ├── diagrama_proceso_ejemplo.png        # Diagrama de flujo de alta resolución (300 DPI)
│   ├── marco_portada_bth.png               # Marco decorativo perimetral azul de la portada BTH
│   └── logo_bth.png                        # Logotipo institucional oficial del Módulo San Julián
├── bibliografia/                           # Base de datos bibliográfica (APA 7ma Edición)
│   └── referencias.bib                     # Archivo BibLaTeX (.bib) con fuentes de citas en APA 7
├── anexos/                                 # Apéndices e información complementaria
│   ├── README.md                           # Guía para añadir anexos
│   ├── index.tex                           # Ensamble general de anexos (\capitulopreliminar{ANEXOS})
│   ├── anexo_a_canvas.tex                  # Anexo A: Modelo Canvas (\seccionanexo)
│   ├── anexo_b_fichas_tecnicas.tex         # Anexo B: Cotizaciones y fichas técnicas (\seccionanexo)
│   └── anexo_c_codigo_fuente.tex           # Anexo C: Código fuente importado (\seccionanexo)
├── promts/                                 # Prompts de apoyo para redacción y revisión con IA
│   ├── migracion/                          # Prompts para recopilación y redacción de capítulos
│   │   ├── crear-contexto.md               # Generación y sincronización de archivos de contexto Markdown
│   │   ├── ficha-proyecto.md               # Flujo estructurado paso a paso para completar ficha y redactar
│   │   └── copiar-documento.md             # Flujo para copia literal directa del documento fuente
│   └── revicion/                           # Set de prompts para revisión académica por etapas
│       ├── 00_README_flujo_revision.md     # Guía del flujo de revisión
│       ├── 00_analisis-capitulos-tesis.md  # Prompt de análisis global de coherencia
│       └── 01_ a 13_*.md                   # Prompts de revisión modular (9 capítulos) y checklist pre-defensa
└── docs/                                   # Regulaciones oficiales y documentos de soporte
    ├── REGLAMENTO_BTH__RM_0912_2023.pdf    # Reglamento oficial de graduación BTH (RM 0912/2023)
    ├── ficha-proyecto.md                   # Ficha de datos y requerimientos del proyecto
    ├── proyecto.md                         # Documento base de texto/notas brutas del proyecto real
    └── proyecto.rtf                        # Documento base en formato RTF del proyecto real
```

---

## 📦 Requisitos Previos e Instalación

Para compilar el proyecto en sistemas basados en Linux (Debian, Ubuntu, Linux Mint):

```bash
sudo apt-get update
sudo apt-get install -y texlive-latex-base texlive-latex-recommended texlive-latex-extra \
                        texlive-bibtex-extra biber texlive-publishers texlive-lang-spanish
```

---

## 🛠️ Comandos de Compilación

A continuación se detallan los comandos disponibles en la terminal para compilar el documento y gestionar los archivos auxiliares.

### 1. Compilación Automatizada con Script (Recomendado)

El proyecto incluye el script ejecutable `./compilar.sh` que gestiona todo el ciclo (`pdflatex` → `biber` → `pdflatex` → `pdflatex`):

```bash
# Compilar el documento completo y conservar archivos auxiliares:
./compilar.sh

# Compilar el documento completo y eliminar archivos auxiliares al finalizar:
./compilar.sh --clean

# Compilación rápida de 1 sola pasada (ideal durante redacción de texto):
./compilar.sh --fast

# Auditar la conformidad de las tablas con normas APA 7ma Edición y diagramación:
./compilar.sh --check-tablas

# Solo limpiar archivos auxiliares sin compilar:
./compilar.sh --only-clean
```

---

### 2. Compilación Automática con `latexmk`

Si utilizas `latexmk`, este detectará automáticamente el backend `biber` configurado en `estilos.sty`:

```bash
latexmk -pdf main.tex
```

#### Modo de compilación continua (Watch Mode):
Recompila automáticamente el PDF cada vez que guardas cambios en cualquiera de los archivos `.tex` o `.bib`:

```bash
latexmk -pvc -pdf main.tex
```

---

### 3. Compilación Manual por Pasos (`pdflatex` + `biber`)

Si prefieres ejecutar el flujo de compilación estándar paso a paso desde la terminal:

```bash
# 1. Genera la estructura inicial y el archivo de control bibliográfico (.bcf)
pdflatex main.tex

# 2. Procesa la base de datos bibliográfica APA 7ma Edición con Biber
biber main

# 3. Compila para enlazar las citas bibliográficas formateadas
pdflatex main.tex

# 4. Compila para resolver las referencias cruzadas y la tabla de contenidos final
pdflatex main.tex
```

---

## 💡 Guía Rápida de Uso

1. **Configurar Datos Institucionales y del Autor:**
   * Abre `estilos/configuracion.tex` y actualiza el título, institución, especialidad, tutor y datos del o los autores (soporta 1 o 2 autores automáticamente; no requiere C.I.).
   * Personaliza si lo requieres el espaciado de párrafos estilo Word con `\espacioposteriorparrafo` (por defecto `8pt`), la sangría con `\sangriaprimeralinea` (por defecto `0pt`) y el espaciado superior de dedicatorias con `\espaciosuperiordedicatoria` (por defecto `3cm`).

2. **Estructura y Redacción de Capítulos (Innovación Tecnológica):**
   * El documento compila los 9 capítulos modulares ubicados en `capitulos/` a través de `capitulos/index.tex`.
   * Completa los datos en `docs/ficha-proyecto.md` (a partir del documento base `docs/proyecto.rtf` o `docs/proyecto.md`) y redacta cada sección en su respectiva subcarpeta (`01_introduccion/` a `09_conclusiones_recomendaciones/`).

3. **Citar Fuentes Bibliográficas (Normas APA 7):**
   * Agrega entradas a `bibliografia/referencias.bib`.
   * En el texto usa `\parencite{clave}` para citas entre paréntesis *(Apellido, 2024)* o `\textcite{clave}` para citas narrativas *Apellido (2024)*.

4. **Insertar y Auditar Tablas e Imágenes (Normas APA 7):**
   * **Tablas:** Crea tablas en `tablas/` e impórtalas con `\input{tablas/mi_tabla.tex}` usando `booktabs`. Título arriba (`\caption{...}`) y notas al pie con `\notatabla{Fuente: ...}`. Para tablas con texto extenso usa `tabularx` (columnas `L`, `C`, `R` o `X`) para evitar que desborden los márgenes. Audita con `./compilar.sh --check-tablas`.
   * **Imágenes y Figuras:** Guarda imágenes en `imagenes/` (.png, .jpg, .pdf). Sigue APA 7: título arriba (`\caption`), imagen centrada (`\centering`) y nota abajo con `\notafigura{Fuente: ...}` (espaciado `\espacionotafigura`). Puedes usar el entorno `figure` con ancho `\anchuraimagenpredeterminada` (configurado en `estilos/configuracion.tex`), la macro ágil `\incluirfigura[ancho]{archivo}{Título}{etiqueta}{Nota}` o subfiguras con `subcaption` (ver guía completa en `imagenes/README.md` y plantilla `imagenes/figura_ejemplo.tex`).

5. **Insertar Código Fuente:**
   * Almacena scripts en `codigo/` e impórtalos con `\lstinputlisting[language=Python, caption={...}, label={lst:...}]{codigo/script.py}`.

6. **Listas y Viñetas:**
   * Priorizar obligatoriamente el uso de viñetas (`\begin{itemize}`) sobre listas numeradas (`\begin{enumerate}`), reservando estas últimas únicamente para secuencias cronológicas estrictas o procedimientos paso a paso.
