# Flujo de Revisión Académica — Innovación Tecnológica (BTH)

Este set de **16 prompts** está diseñado para evaluar y perfeccionar el proyecto de grado en la modalidad de **Innovación Tecnológica** por etapas modulares, respetando la estructura de **9 capítulos** normada por el Reglamento de Graduación del Bachillerato Técnico Humanístico (RM 0912/2023).

---

## 📋 Matriz del Flujo de Revisión

| # | Archivo | Qué revisa | Correspondencia en `capitulos/` |
|---|---|---|---|
| 00 | `00_analisis-capitulos-tesis.md` | Análisis integral de coherencia, rigor técnico y sincronía | Todo el documento consolidado |
| 01 | `01_revision_estructura_general.md` | Índice general, 9 capítulos, carátula, preliminares y anexos | Estructura global y `main.tex` |
| 01b | `01b_revision_introduccion.md` | Contexto sectorial, motivación, pertinencia y contribución esperada | Cap. 1 (`01_introduccion/`) |
| 02 | `02_revision_planteamiento_problema.md` | Diagnóstico, problema, árbol de causas/efectos, objetivos, hipótesis y justificaciones | Cap. 2 (`02_planteamiento_problema/`) |
| 03 | `03_revision_marco_referencial.md` | Antecedentes técnicos, bases científicas y marco conceptual/normativo | Cap. 3 (`03_marco_referencial/`) |
| 04 | `04_revision_desarrollo_innovacion.md` | Diseño técnico, especificaciones, cronograma, recursos y desglose de costos | Cap. 4 (`04_desarrollo_innovacion/`) |
| 05 | `05_revision_metodologia.md` | Enfoque, diseño pre-experimental, operacionalización de variables, instrumentos y análisis | Cap. 5 (`05_metodologia/`) |
| 06 | `06_revision_estrategia_mejora.md` | Plan de mejora continua a corto/mediano plazo y proyección de escalamiento | Cap. 6 (`06_estrategia_mejora/`) |
| 07 | `07_revision_resultados.md` | Pruebas piloto, métricas de funcionamiento, impacto y matriz antes vs. después | Cap. 7 (`07_resultados/`) |
| 08 | `08_revision_proyecto_vida.md` | Aspiraciones técnicas/universitarias, competencias consolidadas y compromiso social | Cap. 8 (`08_proyecto_vida/`) |
| 09 | `09_revision_conclusiones_recomendaciones.md` | Cumplimiento verificable de objetivos y recomendaciones técnicas | Cap. 9 (`09_conclusiones_recomendaciones/`) |
| 10 | `10_revision_coherencia_sincronia_global.md` | Sincronía integral entre los 9 capítulos, matriz transversal y alineación de variables | Capítulos 1 al 9 |
| 11 | `11_revision_redaccion_estilo_academico.md` | Registro formal, redacción impersonal en tercera persona y normas APA 7 | Redacción de todos los capítulos |
| 12 | `12_revision_citas_bibliografia.md` | Correspondencia de citas parentéticas/narrativas con `referencias.bib` | `bibliografia/` y citas en texto |
| 13 | `13_checklist_pre_entrega_final.md` | Verificación final exhaustiva antes de impresión y defensa de grado | Documento final y compilación PDF |

---

## 🛠️ Cómo utilizar cada prompt

### Para agentes de IA con acceso al repositorio
1. Abre el archivo del prompt correspondiente al capítulo o fase que deseas validar.
2. El agente debe leer `AGENTS.md` y seguir sus reglas antes de ejecutar la revisión.
3. Los datos del proyecto se obtienen automáticamente de `estilos/configuracion.tex` y `docs/ficha-proyecto.md`.
4. El agente lee directamente los archivos `.tex` del capítulo listados en cada prompt (sección "Archivos a revisar").

### Para uso manual (copiar y pegar)
1. Abre el archivo del prompt correspondiente al capítulo o fase que deseas validar.
2. Copia su contenido y pégalo en la conversación con el asistente de IA.
3. Rellena los campos entre `[corchetes]` con los datos específicos de tu proyecto (extraídos de `docs/ficha-proyecto.md` o del borrador del capítulo).
4. Pega el contenido LaTeX de los archivos `.tex` del capítulo a evaluar.
5. Los comandos LaTeX (`\section`, `\input`, `\cite`, `\ref`, `\label`, `\begin{table}`) deben conservarse intactos.
