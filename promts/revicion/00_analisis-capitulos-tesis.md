# Prompt: Análisis de Coherencia, Rigor Técnico y Sincronía en Proyecto de Innovación Tecnológica

## Cuándo usar este prompt
Como primer paso de una revisión integral, cuando se dispone de al menos 3 o más capítulos redactados y se desea un diagnóstico panorámico antes de las revisiones puntuales por capítulo.

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`, `\modalidad`).
3. Lee los archivos `.tex` de todos los capítulos ensamblados desde `capitulos/index.tex`.
4. Lee `bibliografia/referencias.bib` para verificar correspondencia de citas.
5. Consulta `docs/ficha-proyecto.md` para contrastar los datos de la ficha con lo redactado.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Sustituye los campos entre `[corchetes]` con los datos de tu proyecto.
3. Pega el contenido LaTeX de los capítulos a analizar al final.

---

## Archivos a revisar

| Capítulo | Archivo de ensamble | Secciones |
| :--- | :--- | :--- |
| Cap. 1 | `capitulos/01_introduccion/main.tex` | `contexto_general.tex`, `motivacion_pertinencia.tex`, `contribucion_esperada.tex` |
| Cap. 2 | `capitulos/02_planteamiento_problema/main.tex` | `diagnostico.tex`, `identificacion_problema.tex`, `formulacion_problema.tex`, `objetivos.tex`, `justificacion.tex` |
| Cap. 3 | `capitulos/03_marco_referencial/main.tex` | `antecedentes.tex`, `bases_teoricas.tex`, `marco_conceptual.tex` |
| Cap. 4 | `capitulos/04_desarrollo_innovacion/main.tex` | `diseno.tex`, `planificacion.tex`, `recursos.tex`, `calculo_costos.tex` |
| Cap. 5 | `capitulos/05_metodologia/main.tex` | `tipo_investigacion.tex`, `poblacion_muestra.tex`, `tecnicas_instrumentos.tex`, `analisis_datos.tex` |
| Cap. 6 | `capitulos/06_estrategia_mejora/main.tex` | `plan_mejora.tex`, `proyeccion_escalamiento.tex` |
| Cap. 7 | `capitulos/07_resultados/main.tex` | `resultados_obtenidos.tex`, `beneficios_impacto.tex`, `comparacion_antes_despues.tex` |
| Cap. 8 | `capitulos/08_proyecto_vida/main.tex` | *(contenido directo en main.tex)* |
| Cap. 9 | `capitulos/09_conclusiones_recomendaciones/main.tex` | `conclusiones.tex`, `recomendaciones.tex` |
| Bibliografía | `bibliografia/referencias.bib` | Base de datos BibLaTeX |

---

## PROMPT

Actúa como un **revisor académico y técnico experto** especializado en proyectos de grado de la modalidad **Innovación Tecnológica** bajo la normativa del Bachillerato Técnico Humanístico (BTH, RM 0912/2023). Tu tarea es analizar los capítulos que te proporcionaré a continuación para garantizar **coherencia total**, **rigor técnico-metodológico** y **sincronía perfecta** entre todas sus partes.

### Contexto del documento
- Modalidad: Proyecto de Grado — Innovación Tecnológica (BTH Bolivia)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Capítulos incluidos en este análisis: [los 9 capítulos ensamblados desde `capitulos/index.tex`]
- Formato fuente: el texto incluye comandos LaTeX (`\chapter`, `\section`, `\cite`, `\ref`, `\label`, `\input`, etc.) — consérvalos intactos en tus citas y no los interpretes como errores.

### Criterios de evaluación

**1. Coherencia total del proyecto de innovación**
- Consistencia terminológica: mismos términos técnicos usados de forma uniforme en todos los capítulos (ej. especificaciones de hardware, software, procesos o componentes).
- Coherencia conceptual: que las bases teóricas y antecedentes del Cap. 3 sustenten directamente el diseño del prototipo en el Cap. 4.
- Alineación estricta entre Objetivos Específicos e Hipótesis (Cap. 2), Desarrollo (Cap. 4), Operacionalización Metodológica (Cap. 5), Resultados (Cap. 7) y Conclusiones (Cap. 9): cada objetivo específico o relación causal debe tener su correlato en la implementación técnica, sus indicadores medidos en los resultados y su conclusión explícita.
- Alineación del título, el problema identificado y las conclusiones finales.

**2. Rigor técnico y narrativo**
- Hilo conductor: progresión lógica entre el problema diagnosticado en la realidad operativa, la concepción del prototipo innovador, su validación empírica y su impacto.
- Fundamentación de costos y recursos: coherencia entre el diseño técnico, la lista de recursos y el presupuesto de inversión/operación (Cap. 4).
- Evidencia empírica: que los resultados presenten pruebas objetivas (métricas de rendimiento, tablas de comparación antes vs. después, ensayos piloto con instrumentos calibrados).
- Nivel de redacción formal: tercera persona, tono impersonal, ausencia de relleno o vaguedades.

**3. Sincronía perfecta entre capítulos**
- Referencias cruzadas: variables, tablas y figuras mencionadas deben coincidir exactamente entre capítulos.
- Consistencia numérica: costos, métricas, porcentajes de mejora o datos de muestra deben ser idénticos en todo el documento.
- Coherencia con el Proyecto de Vida (Cap. 8): que las competencias y reflexiones vocacionales reflejen fielmente el desarrollo técnico realizado en los capítulos previos.
- Bibliografía: todo autor citado en el texto debe existir en `referencias.bib` y viceversa.

### Formato de salida esperado

```
## Resumen ejecutivo
- Nivel de coherencia general: X/10
- Problemas urgentes a resolver: ...
- Fortalezas técnicas y metodológicas identificadas: ...

## Hallazgos por capítulo
### Capítulo X
| Severidad (Crítico / Moderado / Menor) | Sección | Descripción del problema | Sugerencia de corrección |
|---|---|---|---|

## Matriz de sincronía (Problema ↔ Objetivos/Hipótesis ↔ Innovación ↔ Metodología ↔ Resultados ↔ Conclusiones)
[tabla comparativa detallada]

## Recomendaciones finales priorizadas
1. ...
```

### Capítulos a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de los capítulos]
