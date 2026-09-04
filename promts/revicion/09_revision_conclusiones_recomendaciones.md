# Prompt: Revisión de Conclusiones y Recomendaciones (Capítulo 9)

## Cuándo usar este prompt
Al finalizar el borrador del **Capítulo 9: Conclusiones y Recomendaciones** (`capitulos/09_conclusiones_recomendaciones/`).

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`).
3. Lee directamente los archivos `.tex` indicados en la sección "Archivos a revisar".
4. Lee `capitulos/02_planteamiento_problema/objetivos.tex` para verificar el cierre puntual de cada objetivo.
5. Lee `capitulos/07_resultados/resultados_obtenidos.tex` y `capitulos/07_resultados/beneficios_impacto.tex` para verificar que las conclusiones se sustenten en evidencia.
6. Lee `capitulos/02_planteamiento_problema/diagnostico.tex` para verificar que se responda al problema original.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Sustituye los campos entre `[corchetes]` con los datos de tu proyecto.
3. Pega el contenido LaTeX del capítulo, los objetivos del Cap. 2 y los resultados del Cap. 7 al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `capitulos/09_conclusiones_recomendaciones/main.tex` | Ensamble del capítulo |
| `capitulos/09_conclusiones_recomendaciones/conclusiones.tex` | Conclusiones directas del cumplimiento de objetivos |
| `capitulos/09_conclusiones_recomendaciones/recomendaciones.tex` | Recomendaciones operativas y de mejora |
| **Dato cruzado:** `capitulos/02_planteamiento_problema/objetivos.tex` | Objetivos a cerrar |
| **Dato cruzado:** `capitulos/02_planteamiento_problema/diagnostico.tex` | Problema original a responder |
| **Dato cruzado:** `capitulos/07_resultados/resultados_obtenidos.tex` | Evidencia empírica de sustento |
| **Dato cruzado:** `capitulos/07_resultados/beneficios_impacto.tex` | Beneficios documentados |

---

## PROMPT

Actúa como un **revisor de comités de titulación BTH**. Evalúa el **Capítulo 9: Conclusiones y Recomendaciones** que te proporcionaré, verificando que cierre de forma rigurosa y verificable todo lo planteado a lo largo del proyecto de innovación tecnológica.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Objetivos específicos del proyecto: [lee `capitulos/02_planteamiento_problema/objetivos.tex` o pega aquí]
- Resumen de resultados clave: [lee `capitulos/07_resultados/resultados_obtenidos.tex` o pega aquí]
- Formato: comandos LaTeX (`\section`, `\label`) deben preservarse.

### Qué debes evaluar
1. **Cierre de objetivos**: ¿existe una conclusión explícita y verificable por cada objetivo específico formulado en el Capítulo 2?
2. **Conclusiones fundamentadas**: ¿todas las conclusiones derivan de los resultados empíricos expuestos en el Capítulo 7 (sin introducir datos o afirmaciones que no se demostraron antes)?
3. **Respuesta al problema inicial**: ¿las conclusiones dejan claramente establecido en qué medida se solucionó la deficiencia planteada en el diagnóstico del Capítulo 2?
4. **Recomendaciones técnicas y aplicadas**: ¿son directrices concretas (mantenimiento, calibración, capacitación de usuarios, posibles mejoras) y no consejos genéricos o triviales?
5. **Tono conclusivo**: ¿evita el uso de citas bibliográficas o discusiones teóricas nuevas en esta sección final?
6. **Listas y viñetas**: ¿se estructuran las conclusiones y recomendaciones mediante viñetas (`itemize`) en lugar de listas numeradas (`enumerate`)?
7. **Cierre de hipótesis (si aplica)**: si se formuló hipótesis tecnológica o idea a defender en el Capítulo 2, ¿las conclusiones declaran explícitamente si fue demostrada o refutada a partir de la evidencia experimental del Capítulo 7?

### Formato de salida esperado
```
## Matriz de Cierre de Objetivos e Hipótesis
| Objetivo / Hipótesis | Conclusión Asociada (Cap. 9) | ¿Cerrado con Evidencia? | Observación |
|---|---|---|---|

## Identificación de conclusiones huérfanas o no demostradas
- ...

## Evaluación de recomendaciones técnicas
| Recomendación | Ámbito (Operativo / Mantenimiento / Investigación) | ¿Accionable y útil? |
|---|---|---|

## Recomendaciones priorizadas
1. ...
```

### Contenido a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de `capitulos/09_conclusiones_recomendaciones/`]
