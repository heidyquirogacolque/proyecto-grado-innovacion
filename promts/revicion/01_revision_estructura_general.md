# Prompt: Revisión de Estructura General e Índice (9 Capítulos BTH)

## Cuándo usar este prompt
Al iniciar el proceso de revisión, con el índice general o el árbol de capítulos definido, para verificar el estricto cumplimiento de la normativa BTH (RM 0912/2023).

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Lee `main.tex` para verificar la estructura de inclusión de preliminares, capítulos, bibliografía y anexos.
3. Lee `capitulos/index.tex` para verificar el ensamble de los 9 capítulos.
4. Verifica la existencia de cada `main.tex` de capítulo y sus subsecciones `.tex`.
5. Lee `estilos/configuracion.tex` para verificar que los datos institucionales estén definidos como macros.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Pega el índice de contenidos o la estructura de archivos del documento al final.

---

## Archivos a revisar

| Componente | Archivo(s) |
| :--- | :--- |
| Entrada principal | `main.tex` |
| Ensamble de capítulos | `capitulos/index.tex` |
| Preliminares | `preliminares/caratula.tex`, `preliminares/dedicatoria.tex`, `preliminares/agradecimiento.tex`, `preliminares/resumen.tex` |
| Cap. 1 | `capitulos/01_introduccion/main.tex` → `contexto_general.tex`, `motivacion_pertinencia.tex`, `contribucion_esperada.tex` |
| Cap. 2 | `capitulos/02_planteamiento_problema/main.tex` → `diagnostico.tex`, `identificacion_problema.tex`, `formulacion_problema.tex`, `objetivos.tex`, `justificacion.tex` |
| Cap. 3 | `capitulos/03_marco_referencial/main.tex` → `antecedentes.tex`, `bases_teoricas.tex`, `marco_conceptual.tex` |
| Cap. 4 | `capitulos/04_desarrollo_innovacion/main.tex` → `diseno.tex`, `planificacion.tex`, `recursos.tex`, `calculo_costos.tex` |
| Cap. 5 | `capitulos/05_metodologia/main.tex` → `tipo_investigacion.tex`, `poblacion_muestra.tex`, `tecnicas_instrumentos.tex`, `analisis_datos.tex` |
| Cap. 6 | `capitulos/06_estrategia_mejora/main.tex` → `plan_mejora.tex`, `proyeccion_escalamiento.tex` |
| Cap. 7 | `capitulos/07_resultados/main.tex` → `resultados_obtenidos.tex`, `beneficios_impacto.tex`, `comparacion_antes_despues.tex` |
| Cap. 8 | `capitulos/08_proyecto_vida/main.tex` *(contenido directo, sin sub-archivos)* |
| Cap. 9 | `capitulos/09_conclusiones_recomendaciones/main.tex` → `conclusiones.tex`, `recomendaciones.tex` |
| Bibliografía | `bibliografia/referencias.bib` |
| Anexos | `anexos/index.tex` → `anexo_a_canvas.tex`, `anexo_b_fichas_tecnicas.tex`, `anexo_c_codigo_fuente.tex` |
| Configuración y estilos | `estilos/configuracion.tex`, `estilos/estilos.sty`, `estilos/caratula.sty` |

---

## PROMPT

Actúa como un **revisor metodológico de proyectos de grado BTH**. Tu tarea es evaluar la **estructura general** del documento que te proporcionaré, verificando que cumpla con la organización de **9 capítulos** establecida para la modalidad de **Innovación Tecnológica** (Reglamento BTH, Resolución Ministerial RM 0912/2023).

### Contexto del documento
- Modalidad: Proyecto de Grado — Innovación Tecnológica (BTH)
- Estructura oficial requerida:
  1. Preliminares: Carátula oficial BTH, Agradecimiento, Dedicatoria, Índices (TOC, figuras, tablas), Resumen (castellano, extranjero, originario).
  2. Capítulo 1: Introducción (contexto general, motivación y pertinencia, contribución esperada).
  3. Capítulo 2: Planteamiento del Problema (diagnóstico y descripción de la realidad, identificación del problema, formulación del problema, objetivos general/específicos, justificación).
  4. Capítulo 3: Marco Referencial (antecedentes, bases teóricas, marco conceptual y normativo).
  5. Capítulo 4: Desarrollo de la Innovación (diseño de la innovación, planificación/cronograma, recursos, cálculo de costos).
  6. Capítulo 5: Metodología (tipo de investigación, población y muestra, técnicas e instrumentos de recolección, procedimiento de análisis de datos).
  7. Capítulo 6: Estrategia de Mejora y Proyección (plan de mejora continua, proyección y escalamiento).
  8. Capítulo 7: Resultados (resultados obtenidos, beneficios e impacto, comparación antes vs. después).
  9. Capítulo 8: Proyecto de Vida (aspiraciones académicas y profesionales, competencias técnicas/socioemocionales desarrolladas, compromiso ético y proyección comunitaria).
  10. Capítulo 9: Conclusiones y Recomendaciones (conclusiones y recomendaciones).
  11. Bibliografía (APA 7ma Edición) y Anexos (Canvas, fichas técnicas, código fuente).
- El texto incluye comandos LaTeX (`\chapter`, `\section`, `\input`, `\label`) — consérvalos intactos.

### Qué debes evaluar
1. **Completitud normativa**: ¿están presentes los 9 capítulos y sus secciones modulares obligatorias según la RM 0912/2023?
2. **Jerarquía modular**: ¿se respeta la organización donde cada capítulo cuenta con su `main.tex` y sus subsecciones `.tex`?
3. **Numeración y títulos**: ¿los títulos siguen la nomenclatura oficial de la modalidad sin prefijos redundantes ("Capítulo X") en los nombres de sección?
4. **Balance estructural**: ¿los capítulos guardan una proporción equilibrada en su extensión según la relevancia técnica de cada apartado?
5. **Estandarización semántica**: ¿los preliminares emplean `\begin{estilodedicatoria}{Título}` (agradecimiento y dedicatoria al pie en una sola hoja sin separación entre título y contenido) y `\capitulopreliminar{Resumen}`, los anexos emplean `\capitulopreliminar{ANEXOS}` y `\seccionanexo{...}`, y las secciones finales están configuradas con `\configurarseccionfinal`?

### Formato de salida esperado
```
## Diagnóstico general de estructura
[Cumple / Incompleta — % estimado de alineación normativa BTH]

## Secciones o capítulos faltantes o desordenados
- ...

## Observaciones de jerarquía y balance
- ...

## Índice sugerido / corregido (si aplica)
[Estructura ajustada]
```

### Índice o esqueleto a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el índice o la estructura del documento]
