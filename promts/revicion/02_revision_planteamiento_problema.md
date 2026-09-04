# Prompt: Revisión del Planteamiento del Problema (Capítulo 2)

## Cuándo usar este prompt
Al finalizar la redacción del borrador del **Capítulo 2: Planteamiento del Problema** (`capitulos/02_planteamiento_problema/`).

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`).
3. Lee directamente los archivos `.tex` indicados en la sección "Archivos a revisar".
4. Consulta `docs/ficha-proyecto.md` (Sección 2) para contrastar los datos de diagnóstico y objetivos con lo redactado.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Sustituye los campos entre `[corchetes]` con los datos de tu proyecto.
3. Pega el contenido LaTeX de los archivos `.tex` correspondientes al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `capitulos/02_planteamiento_problema/main.tex` | Ensamble del capítulo |
| `capitulos/02_planteamiento_problema/diagnostico.tex` | Diagnóstico y descripción de la realidad apoyado en datos del entorno |
| `capitulos/02_planteamiento_problema/identificacion_problema.tex` | Identificación del problema central, causas y efectos |
| `capitulos/02_planteamiento_problema/formulacion_problema.tex` | Formulación del problema (pregunta principal de investigación/innovación) |
| `capitulos/02_planteamiento_problema/objetivos.tex` | Objetivo general y objetivos específicos |
| `capitulos/02_planteamiento_problema/justificacion.tex` | Justificación técnica, social y económica |

---

## PROMPT

Actúa como un **asesor metodológico de proyectos de grado BTH** en modalidad **Innovación Tecnológica**. Evalúa el **Capítulo 2: Planteamiento del Problema** que te proporcionaré, verificando su fundamentación diagnóstica, formulación técnica y solidez de objetivos.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- El texto incluye comandos LaTeX — consérvalos intactos.

### Qué debes evaluar
1. **Diagnóstico empírico**: ¿describe la realidad del entorno con datos concretos (porcentajes, cifras, deficiencias operativas reales)?
2. **Identificación y árbol de problemas**: ¿se diferencia con nitidez el problema central de sus causas raíces y sus consecuencias?
3. **Formulación del problema**: ¿la pregunta de investigación es clara, delimitada y orientada a la innovación tecnológica?
4. **Objetivo general**: ¿expresa con claridad qué solución tecnológica se diseñará/implementará y qué impacto persigue?
5. **Objetivos específicos**: ¿son medibles, secuenciales y cubren las etapas del proyecto (diagnosticar, diseñar/desarrollar, validar/probar, evaluar costos/impacto)?
6. **Justificación integral**: ¿se abordan las tres dimensiones exigidas (técnica, social/comunitaria y económica/productiva)?
7. **Hipótesis tecnológica o idea a defender (si aplica o es requerida por el tribunal/tutor)**: si el documento formula una hipótesis o postulado de partida, ¿plantea una relación causal clara entre la implementación de la innovación (variable independiente) y la mejora o impacto esperado (variable dependiente) con variables observables?

### Formato de salida esperado
```
## Diagnóstico del problema y realidad operativa
[Fortalezas y deficiencias encontradas]

## Evaluación de objetivos e hipótesis (si aplica)
| Elemento | Tipo (Objetivo / Hipótesis) | ¿Medible y verificable? | Observación metodológica |
|---|---|---|---|

## Análisis de justificación (Técnica / Social / Económica)
[Hallazgos y vacíos identificados]

## Recomendaciones priorizadas
1. ...
```

### Contenido a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de `capitulos/02_planteamiento_problema/`]
