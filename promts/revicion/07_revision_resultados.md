# Prompt: Revisión de Resultados (Capítulo 7)

## Cuándo usar este prompt
Al finalizar el borrador del **Capítulo 7: Resultados** (`capitulos/07_resultados/`).

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`).
3. Lee directamente los archivos `.tex` indicados en la sección "Archivos a revisar", incluyendo las tablas de `tablas/`.
4. Lee `capitulos/02_planteamiento_problema/objetivos.tex` para verificar que cada objetivo tenga un resultado medido.
5. Lee `capitulos/04_desarrollo_innovacion/calculo_costos.tex` y `capitulos/05_metodologia/poblacion_muestra.tex` para verificar consistencia numérica.
6. Consulta `docs/ficha-proyecto.md` (Sección 7) para contrastar resultados con los datos de la ficha.
7. Ejecuta `./compilar.sh --check-tablas` para certificar que las tablas de resultados piloto y comparación antes vs después cumplan con APA 7 y mantengan su estructura.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Sustituye los campos entre `[corchetes]` con los datos de tu proyecto.
3. Pega el contenido LaTeX del capítulo, los objetivos del Cap. 2 y las tablas al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `capitulos/07_resultados/main.tex` | Ensamble del capítulo |
| `capitulos/07_resultados/resultados_obtenidos.tex` | Métricas cuantitativas y cualitativas de las pruebas piloto |
| `capitulos/07_resultados/beneficios_impacto.tex` | Beneficios cuantificados (técnico, económico, social, ambiental) |
| `capitulos/07_resultados/comparacion_antes_despues.tex` | Matriz comparativa de indicadores antes vs. después |
| **Tabla asociada:** `tablas/comparacion_antes_despues_ejemplo.tex` | Tabla comparativa antes vs. después |
| **Tabla asociada:** `tablas/resultados_piloto_ejemplo.tex` | Resultados de prueba piloto vs. metas |
| **Dato cruzado:** `capitulos/02_planteamiento_problema/objetivos.tex` | Objetivos a demostrar cumplimiento |
| **Dato cruzado:** `capitulos/04_desarrollo_innovacion/calculo_costos.tex` | Costos para verificar consistencia |
| **Dato cruzado:** `capitulos/05_metodologia/poblacion_muestra.tex` | Tamaño de muestra para verificar consistencia |

---

## PROMPT

Actúa como un **revisor técnico y evaluador de proyectos de grado BTH** en modalidad **Innovación Tecnológica**. Evalúa el **Capítulo 7: Resultados** que te proporcionaré, verificando la evidencia empírica de funcionamiento, el cálculo de beneficios y la efectividad demostrada frente a la situación previa.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Objetivos específicos del proyecto: [lee `capitulos/02_planteamiento_problema/objetivos.tex` o pega aquí los objetivos del Cap. 2]
- Formato: comandos LaTeX (`\input{tablas/...}`, `\begin{table}`, `\caption`, `\label`) deben preservarse.

### Qué debes evaluar
1. **Evidencia empírica de funcionamiento**: ¿los resultados están respaldados por mediciones objetivas (tiempos de respuesta, tasa de acierto, reducción de pérdidas, consumo energético)?
2. **Respuesta a los objetivos**: ¿cada objetivo específico del proyecto encuentra un resultado concreto que demuestra su cumplimiento?
3. **Beneficios e impacto verificable**: ¿los impactos descritos están justificados con los datos de las pruebas y no con meras expectativas teóricas?
4. **Matriz de comparación antes vs. después**: ¿la tabla comparativa contrasta indicadores medibles entre la situación manual/tradicional previa y la solución con la innovación tecnológica implementada?
5. **Consistencia numérica**: ¿las cifras de porcentaje de mejora, tiempos o costos coinciden exactamente con los capítulos previos (Caps. 2, 4 y 5)?
6. **Contraste de variables e hipótesis (si aplica)**: ¿los resultados demuestran la relación empírica entre la variable independiente (la innovación) y las variables dependientes (efectos medidos)? Si se planteó hipótesis tecnológica o idea a defender en el Cap. 2, ¿los datos recopilados la validan o refutan con evidencia estadística u operativa?

### Formato de salida esperado
```
## Matriz Objetivo/Hipótesis ↔ Variable Medida ↔ Evidencia Empírica
| Objetivo Específico / Hipótesis | Variable Medida (VD) | Resultado Obtenido | Métrica / Evidencia Numérica | ¿Cumplido / Validada? |
|---|---|---|---|---|

## Análisis de la matriz Antes vs. Después
[Evaluación del impacto cuantificado y rigor de la comparativa]

## Consistencia de cifras y afirmaciones
[Hallazgos sobre discrepancias numéricas o afirmaciones no sustentadas]

## Recomendaciones priorizadas
1. ...
```

### Contenido a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de `capitulos/07_resultados/` y la tabla comparativa de `tablas/`]
