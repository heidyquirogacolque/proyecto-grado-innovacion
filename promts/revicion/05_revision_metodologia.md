# Prompt: Revisión de la Metodología (Capítulo 5)

## Cuándo usar este prompt
Al finalizar el borrador del **Capítulo 5: Metodología** (`capitulos/05_metodologia/`).

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`).
3. Lee directamente los archivos `.tex` indicados en la sección "Archivos a revisar".
4. Lee `capitulos/02_planteamiento_problema/objetivos.tex` para verificar que la metodología cubra la validación de cada objetivo.
5. Lee `capitulos/04_desarrollo_innovacion/diseno.tex` para verificar que los instrumentos midan las variables del diseño.
6. Consulta `docs/ficha-proyecto.md` (Sección 5) para contrastar los datos metodológicos con la ficha.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Sustituye los campos entre `[corchetes]` con los datos de tu proyecto.
3. Pega el contenido LaTeX del capítulo al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `capitulos/05_metodologia/main.tex` | Ensamble del capítulo |
| `capitulos/05_metodologia/tipo_investigacion.tex` | Enfoque, tipo de investigación y diseño metodológico |
| `capitulos/05_metodologia/poblacion_muestra.tex` | Población objetivo y tamaño muestral de prueba |
| `capitulos/05_metodologia/tecnicas_instrumentos.tex` | Técnicas e instrumentos de recolección de datos |
| `capitulos/05_metodologia/analisis_datos.tex` | Procedimiento de procesamiento y análisis |
| **Dato cruzado:** `capitulos/02_planteamiento_problema/objetivos.tex` | Objetivos a validar metodológicamente |
| **Dato cruzado:** `capitulos/04_desarrollo_innovacion/diseno.tex` | Variables técnicas a medir |

---

## PROMPT

Actúa como un **revisor metodológico de proyectos de grado BTH** en modalidad **Innovación Tecnológica**. Evalúa el **Capítulo 5: Metodología** que te proporcionaré, verificando que el enfoque científico y las técnicas de recolección/análisis permitan validar de manera objetiva el prototipo o innovación.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Formato: comandos LaTeX (`\section`, `\label`, `\cite`) deben preservarse.

### Qué debes evaluar
1. **Tipo y diseño de investigación**: ¿están correctamente clasificados para un proyecto tecnológico (investigación aplicada tecnológica / diseño pre-experimental con pre-test y post-test)? ¿se fundamenta con autores metodológicos reconocidos (ej. Hernández-Sampieri, Bunge, Bernal)?
2. **Operacionalización de variables**: ¿se identifican con nitidez la **Variable Independiente (VI)** (la innovación tecnológica, prototipo o sistema propuesto) y las **Variables Dependientes (VD)** (los efectos e impactos medibles: eficiencia, reducción de tiempos, reducción de costos, tasa de fallas, calidad)? ¿se especifican dimensiones, indicadores y unidades de medida formales?
3. **Población y muestra**: ¿se diferencian claramente los sujetos humanos (usuarios, productores, docentes) de las **unidades experimentales de prueba** (lotes de producción, ciclos de operación, mediciones repetidas o réplicas de laboratorio)? ¿se especifica el criterio de selección y tamaño muestral?
4. **Técnicas, instrumentos y calibración**: ¿los instrumentos miden directamente los indicadores operacionalizados? En mediciones técnicas (sensores, balanzas, multímetros, probetas), ¿se especifican márgenes de tolerancia, precisión o calibración según hojas de datos del fabricante? En encuestas/entrevistas, ¿se menciona el criterio de validación?
5. **Procedimiento de análisis de datos**: ¿se explica claramente cómo se organizarán y procesarán los datos (estadística descriptiva, promedios, porcentajes de variación, pruebas de tolerancia) para validar la innovación y contrastar la hipótesis u objetivos?

### Formato de salida esperado
```
## Diagnóstico metodológico
[Enfoque, pertinencia del diseño pre-experimental y coherencia con la innovación]

## Matriz de Operacionalización de Variables
| Tipo de Variable | Variable | Definición Operacional | Indicador | Unidad de Medida | Instrumento Asociado |
|---|---|---|---|---|---|
| Independiente (VI) | [Prototipo / Solución] | ... | ... | ... | ... |
| Dependiente (VD 1) | [Efecto / Rendimiento] | ... | ... | ... | ... |
| Dependiente (VD 2) | [Costo / Impacto] | ... | ... | ... | ... |

## Evaluación de Instrumentos, Calibración y Muestra
| Instrumento | Variable que mide | Tolerancia / Calibración / Validación | Muestra / Ensayos aplicados | ¿Riguroso y suficiente? |
|---|---|---|---|---|

## Evaluación del procedimiento de análisis de datos
[Hallazgos sobre el procesamiento estadístico y comparativo]

## Recomendaciones priorizadas
1. ...
```

### Contenido a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de `capitulos/05_metodologia/`]
