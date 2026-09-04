# Prompt: Revisión del Desarrollo de la Innovación (Capítulo 4)

## Cuándo usar este prompt
Al finalizar el borrador del **Capítulo 4: Desarrollo de la Innovación** (`capitulos/04_desarrollo_innovacion/`). Este es el núcleo técnico de la propuesta.

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`).
3. Lee directamente los archivos `.tex` indicados en la sección "Archivos a revisar", incluyendo las tablas de `tablas/`.
4. Lee `capitulos/02_planteamiento_problema/objetivos.tex` para verificar que el diseño responda a cada objetivo.
5. Consulta `docs/ficha-proyecto.md` (Sección 4) para contrastar costos y recursos con los datos de la ficha.
6. Ejecuta `./compilar.sh --check-tablas` para auditar la conformidad de las tablas del capítulo con APA 7 y verificar que no desborden los márgenes.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Pega el contenido LaTeX del capítulo y las tablas correspondientes al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `capitulos/04_desarrollo_innovacion/main.tex` | Ensamble del capítulo |
| `capitulos/04_desarrollo_innovacion/diseno.tex` | Características, utilidad, calidad y especificaciones técnicas |
| `capitulos/04_desarrollo_innovacion/planificacion.tex` | Cronograma de ejecución por fases y actividades |
| `capitulos/04_desarrollo_innovacion/recursos.tex` | Recursos humanos, materiales, herramientas y financieros |
| `capitulos/04_desarrollo_innovacion/calculo_costos.tex` | Presupuesto, costos de inversión, fijos/variables y operativos |
| **Tablas asociadas:** | |
| `tablas/especificaciones_tecnicas_ejemplo.tex` | Matriz de especificaciones técnicas |
| `tablas/cronograma_ejemplo.tex` | Cronograma de actividades por fases |
| `tablas/costos_ejemplo.tex` | Resumen de estructura de costos |
| `tablas/inversiones_ejemplo.tex` | Plan de inversión |
| `tablas/costos_produccion_ejemplo.tex` | Costos operativos de producción |
| `tablas/indicadores_financieros_ejemplo.tex` | Indicadores financieros y punto de equilibrio |
| **Dato cruzado:** `capitulos/02_planteamiento_problema/objetivos.tex` | Objetivos del proyecto |

---

## PROMPT

Actúa como un **revisor técnico e industrial de proyectos de grado BTH** en modalidad **Innovación Tecnológica**. Evalúa el **Capítulo 4: Desarrollo de la Innovación** que te proporcionaré, verificando la precisión del diseño técnico, planificación, recursos y viabilidad económica.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Formato: comandos LaTeX (`\input{tablas/...}`, `\begin{table}`, `\caption`, `\label`) deben preservarse.

### Qué debes evaluar
1. **Diseño y especificaciones técnicas**: ¿las características funcionales, mecánicas, electrónicas o de software están descritas con nivel de detalle replicable? ¿la tabla de especificaciones técnicas incluye parámetros cuantitativos (voltajes, dimensiones, capacidades, tolerancias)?
2. **Utilidad y calidad**: ¿se fundamenta con claridad cómo la innovación aporta valor práctico y qué estándares de calidad/ensayo se aplican?
3. **Planificación y cronograma**: ¿las fases del cronograma cubren secuencialmente desde el diseño preliminar hasta las pruebas piloto? ¿los tiempos estimados son realistas para el ciclo escolar BTH?
4. **Recursos requeridos**: ¿está completa la lista de materiales, sensores, módulos, herramientas o licencias necesarias?
5. **Cálculo de costos y presupuesto**: ¿los precios unitarios y subtotales en las tablas de costos son consistentes y reflejan la moneda local (Bs.)? ¿se discriminan correctamente la inversión fija, costos operativos y el costo total del prototipo? ¿cumplen la norma SI/ISO 80000-1 (punto decimal, sin coma para miles ni decimales) y utilizan la macro `\notatabla{...}` para notas al pie de tabla?

### Formato de salida esperado
```
## Evaluación del diseño técnico y especificaciones
[Detalle técnico, replicabilidad y consistencia de tablas]

## Coherencia del cronograma y fases de desarrollo
[Análisis de tiempos, actividades críticas y factibilidad]

## Análisis de recursos y presupuesto de costos
| Rubro | ¿Costos claros y realistas? | Consistencia matemática | Observación |
|---|---|---|---|

## Recomendaciones técnicas priorizadas
1. ...
```

### Contenido a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de `capitulos/04_desarrollo_innovacion/` y las tablas correspondientes de `tablas/`]
