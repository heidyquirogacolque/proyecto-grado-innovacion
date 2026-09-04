# Prompt: Revisión de la Introducción (Capítulo 1)

## Cuándo usar este prompt
Al finalizar la redacción del borrador del **Capítulo 1: Introducción** (`capitulos/01_introduccion/`).

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`, `\modalidad`).
3. Lee directamente los archivos `.tex` indicados en la sección "Archivos a revisar".
4. Si necesitas contrastar con los objetivos o el diagnóstico, lee `capitulos/02_planteamiento_problema/objetivos.tex` y `capitulos/02_planteamiento_problema/diagnostico.tex`.
5. Consulta `docs/ficha-proyecto.md` (Sección 1) para verificar los datos de contexto.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Sustituye los campos entre `[corchetes]` con los datos de tu proyecto.
3. Pega el contenido LaTeX de los archivos `.tex` correspondientes al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `capitulos/01_introduccion/main.tex` | Ensamble del capítulo (`\chapter` y `\input` de las secciones) |
| `capitulos/01_introduccion/contexto_general.tex` | Contexto general del sector y ámbito geográfico |
| `capitulos/01_introduccion/motivacion_pertinencia.tex` | Motivación personal y pertinencia normativa/social |
| `capitulos/01_introduccion/contribucion_esperada.tex` | Contribución esperada y tipo de innovación |

---

## PROMPT

Actúa como un **revisor académico de proyectos de grado BTH** en modalidad **Innovación Tecnológica**. Evalúa el **Capítulo 1: Introducción** que te proporcionaré, verificando que presente un panorama claro, fundamentado y motivador del proyecto de innovación tecnológica.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Secciones analizadas de `capitulos/01_introduccion/`:
  * `contexto_general.tex`: Contexto del sector productivo/tecnológico, ámbito geográfico, población destinataria y situación actual con datos verificables.
  * `motivacion_pertinencia.tex`: Evento o necesidad que originó la idea, relevancia normativa o social y pertinencia temporal.
  * `contribucion_esperada.tex`: Tipo de solución propuesta (producto, servicio, sistema), mejora concreta respecto a la situación actual y carácter de la innovación (incremental o disruptiva).
- El texto incluye comandos LaTeX (`\section`, `\label`, `\cite`, `\parencite`, `\textcite`) — consérvalos intactos.

### Qué debes evaluar
1. **Contextualización del sector**: ¿se describe el área de aplicación con datos cuantitativos verificables (cifras del INE, estudios sectoriales, registros institucionales) y fuentes correctamente citadas?
2. **Delimitación geográfica y poblacional**: ¿se identifica con precisión dónde se implementará la innovación y a quiénes beneficiará directamente?
3. **Motivación y pertinencia**: ¿la motivación personal se articula con una necesidad real del entorno? ¿se conecta con políticas públicas, planes de desarrollo o tendencias tecnológicas relevantes?
4. **Contribución esperada**: ¿se describe con claridad qué tipo de solución se propone y qué mejora concreta genera? ¿se clasifica explícitamente como innovación incremental o disruptiva con justificación?
5. **Hilo conductor hacia el Capítulo 2**: ¿la introducción prepara al lector para comprender el problema que se abordará en el diagnóstico del Capítulo 2?
6. **Tono y registro**: ¿mantiene español formal, tercera persona impersonal, sin coloquialismos ni afirmaciones sin respaldo?

### Formato de salida esperado
```
## Diagnóstico general del Capítulo 1
[Evaluación global: fortalezas y debilidades]

## Evaluación por sección
| Sección | Aspecto evaluado | Nivel (Sólido / Parcial / Débil) | Observación |
|---|---|---|---|
| Contexto general | Datos cuantitativos y fuentes | ... | ... |
| Motivación y pertinencia | Articulación necesidad–relevancia | ... | ... |
| Contribución esperada | Claridad de la propuesta innovadora | ... | ... |

## Coherencia con el Capítulo 2
[¿La introducción anticipa correctamente el problema que se diagnosticará?]

## Recomendaciones priorizadas
1. ...
```

### Contenido a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de `capitulos/01_introduccion/`]
