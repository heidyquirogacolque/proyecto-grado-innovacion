# Prompt: Revisión del Marco Referencial (Capítulo 3)

## Cuándo usar este prompt
Al finalizar el borrador del **Capítulo 3: Marco Referencial** (`capitulos/03_marco_referencial/`), teniendo definidos los objetivos del Capítulo 2.

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`).
3. Lee directamente los archivos `.tex` indicados en la sección "Archivos a revisar".
4. Lee también `capitulos/02_planteamiento_problema/objetivos.tex` para contrastar la cobertura teórica con los objetivos del proyecto.
5. Lee `capitulos/04_desarrollo_innovacion/diseno.tex` para verificar que cada componente técnico tenga base teórica.
6. Consulta `bibliografia/referencias.bib` para verificar las citas.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Sustituye los campos entre `[corchetes]` con los datos de tu proyecto.
3. Pega el contenido LaTeX del capítulo y los objetivos del Cap. 2 al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `capitulos/03_marco_referencial/main.tex` | Ensamble del capítulo |
| `capitulos/03_marco_referencial/antecedentes.tex` | Antecedentes a nivel local, nacional e internacional |
| `capitulos/03_marco_referencial/bases_teoricas.tex` | Fundamentación técnica, científica y tecnológica |
| `capitulos/03_marco_referencial/marco_conceptual.tex` | Marco conceptual y normativo |
| **Dato cruzado:** `capitulos/02_planteamiento_problema/objetivos.tex` | Objetivos para contrastar cobertura |
| **Dato cruzado:** `capitulos/04_desarrollo_innovacion/diseno.tex` | Componentes técnicos que requieren base teórica |

---

## PROMPT

Actúa como un **revisor académico y técnico** de proyectos de grado BTH. Evalúa el **Capítulo 3: Marco Referencial** que te proporcionaré, verificando su pertinencia teórica, cobertura conceptual y respaldo bibliográfico en la modalidad de Innovación Tecnológica.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Objetivos específicos del proyecto: [lee `capitulos/02_planteamiento_problema/objetivos.tex` o pega aquí los objetivos del Cap. 2]
- Formato: comandos LaTeX (`\cite`, `\parencite`, `\textcite`, etc.) deben preservarse.

### Qué debes evaluar
1. **Antecedentes pertinentes**: ¿se revisan proyectos o tecnologías afines en los tres niveles (local, nacional, internacional), destacando aportes y limitaciones frente a la propuesta actual?
2. **Bases teóricas rigurosas**: ¿se explican los principios físicos, electrónicos, informáticos o biológicos que rigen el funcionamiento de la innovación?
3. **Marco conceptual y normativo**: ¿se definen con precisión los conceptos clave y se citan las normativas bolivianas o estándares técnicos pertinentes (ej. RM 0912/2023, normas NB/ISO)?
4. **Integración con los objetivos**: ¿todo concepto o componente empleado en el diseño (Cap. 4) tiene su correspondiente base teórica aquí?
5. **Citas bibliográficas (APA 7)**: ¿se emplea adecuadamente el estilo de citación parentético y narrativo sin fuentes dudosas o inventadas?

### Formato de salida esperado
```
## Cobertura conceptual y teórica
| Concepto / Componente del Proyecto | ¿Desarrollado en el Marco Referencial? | Observación |
|---|---|---|

## Análisis de antecedentes y comparativa
[Hallazgos sobre antecedentes locales, nacionales e internacionales]

## Calidad del marco normativo y citas
[Evaluación de fuentes y estándares legales/técnicos citados]

## Recomendaciones priorizadas
1. ...
```

### Contenido a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de `capitulos/03_marco_referencial/`]
