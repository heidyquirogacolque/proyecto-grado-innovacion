# Prompt: Revisión de la Estrategia de Mejora y Proyección (Capítulo 6)

## Cuándo usar este prompt
Al finalizar el borrador del **Capítulo 6: Estrategia de Mejora y Proyección** (`capitulos/06_estrategia_mejora/`).

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`).
3. Lee directamente los archivos `.tex` indicados en la sección "Archivos a revisar", incluyendo las tablas de `tablas/`.
4. Lee `capitulos/07_resultados/resultados_obtenidos.tex` para verificar que las mejoras respondan a limitaciones detectadas en las pruebas.
5. Consulta `docs/ficha-proyecto.md` (Sección 6) para contrastar metas e indicadores con la ficha.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Pega el contenido LaTeX del capítulo y las tablas correspondientes al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `capitulos/06_estrategia_mejora/main.tex` | Ensamble del capítulo |
| `capitulos/06_estrategia_mejora/plan_mejora.tex` | Plan de mejora continua por horizontes temporales |
| `capitulos/06_estrategia_mejora/proyeccion_escalamiento.tex` | Proyección técnica, escalamiento y potencial de transferencia |
| **Tabla asociada:** `tablas/plan_mejora_ejemplo.tex` | Matriz del plan de mejora continua |
| **Dato cruzado:** `capitulos/07_resultados/resultados_obtenidos.tex` | Limitaciones detectadas en pruebas |

---

## PROMPT

Actúa como un **evaluador de proyectos tecnológicos y escalabilidad**. Evalúa el **Capítulo 6: Estrategia de Mejora y Proyección** que te proporcionaré, verificando la viabilidad de la mejora continua y el potencial de escalamiento de la innovación.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Formato: comandos LaTeX (`\input{tablas/...}`, `\begin{table}`, `\caption`, `\label`) deben preservarse.

### Qué debes evaluar
1. **Plan de mejora continua**: ¿las acciones de mejora propuestas responden a debilidades o limitaciones identificadas durante el desarrollo o las pruebas? ¿se diferencian claramente las acciones a corto, mediano y largo plazo?
2. **Matriz del plan de mejora**: ¿la tabla de mejora incluye metas concretas, indicadores de seguimiento y responsables?
3. **Proyección técnica y funcional**: ¿se proyectan optimizaciones técnicas realistas (ej. integración IoT, mayor autonomía, nuevos materiales, reducción de costos)?
4. **Escalamiento y transferencia**: ¿se analiza el potencial de replicación en otros contextos comunitarios, educativos o unidades productivas similares?

### Formato de salida esperado
```
## Diagnóstico del plan de mejora continua
[Pertinencia de las acciones a corto, mediano y largo plazo]

## Evaluación de la matriz de mejora
| Horizonte | Acción propuesta | Indicador de logro | ¿Factible y realista? |
|---|---|---|---|

## Análisis del potencial de escalamiento y transferencia
[Fortalezas y limitaciones de la proyección comercial o social]

## Recomendaciones priorizadas
1. ...
```

### Contenido a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de `capitulos/06_estrategia_mejora/` y las tablas correspondientes]
