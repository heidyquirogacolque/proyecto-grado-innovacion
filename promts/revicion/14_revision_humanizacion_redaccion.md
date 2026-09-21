# Prompt: Humanización de la Redacción — Voz Natural y Auténtica del Estudiante

## Cuándo usar este prompt
Después de redactar o generar contenido con asistencia de IA, como paso de pulido para eliminar patrones artificiales y lograr que el texto suene como si lo hubiera escrito un **estudiante real** de bachillerato técnico con orientación de su tutor, y no una máquina. Es complementario al prompt `11_revision_redaccion_estilo_academico.md` (que valida gramática y estilo formal) y debe ejecutarse **antes** del checklist pre-entrega (`13_checklist_pre_entrega_final.md`).

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`, `\modalidad`).
3. Lee directamente los archivos `.tex` del capítulo o sección a humanizar (ver tabla abajo).
4. Consulta `docs/ficha-proyecto.md` y `docs/proyecto.md` o `docs/proyecto.rtf` para recuperar la voz original del estudiante.
5. Compara la redacción actual con el documento fuente original: prioriza rescatar expresiones auténticas del estudiante que se hayan perdido durante la asistencia de IA.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Pega el contenido LaTeX del capítulo o sección a humanizar al final.
3. Si dispones del borrador original del estudiante (notas manuscritas, documento Word/RTF), pégalo también como referencia de voz auténtica.

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

---

## PROMPT

Actúa como un **editor especializado en humanización de textos académicos** y experto en detectar redacción generada por inteligencia artificial. Tu misión es transformar el texto que te proporcionaré para que suene **natural, auténtico y creíble** como la voz de un estudiante de bachillerato técnico (BTH Bolivia) que escribió su proyecto de grado con orientación de un tutor, **sin perder el registro académico formal ni violar las normas APA 7**.

### Contexto del documento
- Modalidad: Proyecto de Grado — Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Nivel académico del autor: **Estudiante de Bachillerato Técnico Humanístico** (nivel secundario, 17-19 años). NO es un doctorante, investigador senior ni un profesional con décadas de experiencia.
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Registro lingüístico: Español formal, tono impersonal (tercera persona), pero con **naturalidad** y sin artificialidad.
- Formato: el texto incluye comandos LaTeX (`\section`, `\cite`, `\ref`, `\label`, `\textbf`, `\parencite`, `\textcite`, `\input`) — **no los trates como errores ni los elimines**, concéntrate en la prosa que los rodea.

### Filosofía de humanización
El objetivo **NO** es empobrecer ni simplificar el texto. Es lograr que suene como lo que realmente es: el trabajo serio de un estudiante joven que se esforzó, investigó, construyó algo con sus manos y lo documentó con la guía de su tutor. El texto debe sentirse **vivido y concreto**, no **recitado y genérico**.

### Qué debes detectar y corregir

**1. Muletillas y conectores vacíos típicos de IA**
Detectar y eliminar o reemplazar el uso excesivo de frases formulaicas que no aportan información:
- ❌ "En este sentido...", "En ese contexto...", "En ese orden de ideas..."
- ❌ "Cabe destacar que...", "Es importante mencionar que...", "Vale la pena señalar que..."
- ❌ "Resulta pertinente considerar...", "Es menester resaltar..."
- ❌ "En la actualidad...", "Hoy en día..." (usados como apertura genérica de párrafo)
- ❌ "A modo de cierre...", "En definitiva...", "A manera de síntesis..." (usados como cierre formulaico)
- ❌ "En el marco de...", "En el ámbito de..." (cuando no delimitan nada específico)
- ✅ **Acción:** Eliminar la muletilla e ir directo al contenido, o sustituir por un conector simple y funcional ("por eso", "además", "sin embargo", "así", "por lo tanto").

**2. Frases rimbombantes vacías de contenido**
Detectar afirmaciones que suenan impresionantes pero no dicen nada concreto ni verificable:
- ❌ "...constituye un pilar fundamental para el desarrollo socioeconómico de la región."
- ❌ "...representa un paradigma transformador en la gestión operativa."
- ❌ "...contribuye significativamente al fortalecimiento del tejido productivo local."
- ❌ "La convergencia sinérgica de estos factores posibilita..."
- ✅ **Acción:** Sustituir por una afirmación concreta con datos o hechos específicos del proyecto real (ej. "...reduce el tiempo de inscripción de 45 minutos a 5 minutos por estudiante").

**3. Vocabulario innaturalmente sofisticado para el nivel BTH**
Detectar palabras que un estudiante de 17-19 años no usaría espontáneamente en su redacción:
- ❌ "coadyuvar", "sinergia", "paradigma", "holístico", "transversal", "idoneidad", "menester"
- ❌ "subyacente", "dilucidación", "concatenación", "subsanar", "proclive"
- ❌ "empoderamiento tecnológico", "ecosistema digital", "gobernanza de datos"
- ✅ **Acción:** Reemplazar por vocabulario técnico preciso pero natural: "ayudar/contribuir", "trabajo conjunto", "modelo", "completo/integral", "resolver/corregir", "tendencia".
- ⚠️ **Excepción:** Los términos técnicos propios de la especialidad (ej. "framework", "base de datos relacional", "API REST", "protocolo HTTP", "servidor web") SÍ son naturales y deben conservarse.

**4. Estructuras de párrafo mecánicas y predecibles**
Detectar el patrón repetitivo donde cada párrafo sigue exactamente la misma estructura:
- ❌ Párrafo tipo: [Conector genérico] + [Afirmación abstracta] + [Dato suelto] + [Cierre grandilocuente]
- ❌ Todos los párrafos comienzan con la misma estructura gramatical (ej. todos empiezan con "El sistema...", "La implementación...", "El proyecto...")
- ❌ Todos los párrafos tienen exactamente la misma longitud (señal clara de generación artificial)
- ✅ **Acción:** Variar la estructura: alternar párrafos cortos (2-3 oraciones directas) con párrafos más desarrollados (5-7 oraciones). Iniciar algunos con el dato concreto, otros con una pregunta retórica, otros con el resultado antes que la explicación.

**5. Síndrome de metadescripción (escribir *sobre* la sección en vez de escribir la sección)**
Detectar cuando el texto describe lo que *debería contener* una sección en lugar de redactar directamente el contenido:
- ❌ "En este apartado se describe el entorno sectorial en el que se sitúa el proyecto..."
- ❌ "Se fundamenta la motivación principal que originó la propuesta técnica..."
- ❌ "Se revisan trabajos previos, investigaciones o proyectos similares..."
- ❌ "Se exponen los datos cuantitativos y cualitativos resultantes de las pruebas..."
- ❌ "Se describen las metas de formación superior y continuidad de estudios..."
- ✅ **Acción:** Eliminar la metadescripción y arrancar directamente con el contenido factual. En lugar de *"En este apartado se describe la situación actual del entorno de estudio"*, escribir directamente: *"En el Módulo Tecnológico Productivo San Julián, el proceso de inscripción se realiza manualmente en planillas de papel, lo que genera demoras de hasta tres días al inicio de cada gestión escolar."*

**6. Tricolón retórico compulsivo (la "regla de tres" de la IA)**
Detectar la tendencia a agrupar siempre tres (o cuatro) elementos simétricos para aparentar completitud analítica, especialmente cuando los elementos no corresponden al proyecto real:
- ❌ "...desde las perspectivas técnica, económica y social" (tricolón genérico)
- ❌ "...pruebas de laboratorio, simulaciones y ensayos de campo" (tricolón que no aplica a un sistema web)
- ❌ "...diseño, programación, ensamblaje, análisis" (incluye "ensamblaje" en un proyecto de software)
- ❌ "...políticas públicas de desarrollo productivo, planes estratégicos sectoriales y normativa vigente"
- ✅ **Acción:** Verificar que cada elemento del tricolón sea **pertinente y específico** para el proyecto real. Si el proyecto es un sistema web, las pruebas son *unitarias, de estrés y de aceptación de usuario*, no *de laboratorio ni de campo*. Romper la simetría artificial: a veces son 2 elementos, a veces 4, según lo que realmente aplique.

**7. Falta de especificidad y concreción local**
Detectar contenido genérico que podría aplicarse a cualquier proyecto de cualquier país:
- ❌ "La institución educativa enfrenta múltiples desafíos en la era digital."
- ❌ "La tecnología ha transformado los procesos educativos a nivel mundial."
- ✅ **Acción:** Anclar cada afirmación al contexto real y local del proyecto: nombres de instituciones, municipios, datos del INE Bolivia, números de resoluciones ministeriales, cifras reales del diagnóstico.

**8. Transiciones artificialmente perfectas**
Detectar cuando cada párrafo se conecta con el siguiente mediante transiciones demasiado pulidas y simétricas:
- ❌ "Habiendo analizado X, corresponde ahora examinar Y."
- ❌ "Una vez establecido el marco anterior, resulta procedente abordar..."
- ✅ **Acción:** Las transiciones naturales son más simples y a veces implícitas. El orden lógico del contenido ya guía al lector. Una transición natural sería simplemente pasar al siguiente tema, o usar un conector breve ("Además de...", "Otro aspecto importante es...", "Con base en estos datos...").

**9. Adjetivación excesiva e hiperbólica**
Detectar la acumulación innecesaria de adjetivos que inflan el texto sin agregar información:
- ❌ "...una solución innovadora, eficiente, escalable, sostenible y de alto impacto social."
- ❌ "...un proceso notablemente más ágil, significativamente más preciso y considerablemente más confiable."
- ✅ **Acción:** Conservar máximo 1-2 adjetivos relevantes por enunciado y respaldarlos con evidencia. En lugar de "significativamente más rápido", escribir "3 veces más rápido según las pruebas piloto (ver Tabla X)".

**10. Exceso de voz pasiva encadenada**
Detectar cadenas de voz pasiva que hacen el texto monótono y distante:
- ❌ "Fue diseñado un sistema que fue implementado y fue evaluado, obteniéndose resultados que fueron analizados..."
- ✅ **Acción:** Alternar voz pasiva con construcciones impersonales activas: "Se diseñó el sistema...", "El sistema procesa las solicitudes...", "Las pruebas arrojaron...". La tercera persona impersonal no exige que TODO sea pasivo.

**11. Listas con elementos genéricos o rellenadores**
Detectar viñetas o enumeraciones que repiten la misma idea con distintas palabras:
- ❌ "Mejorar la calidad del servicio" / "Optimizar la prestación del servicio" / "Elevar los estándares del servicio ofrecido" (misma idea, tres veces)
- ✅ **Acción:** Cada elemento de una lista debe aportar información distinta y verificable. Si dos ítems dicen lo mismo, fusionarlos o eliminar el redundante.

**12. Capítulo 8 (Proyecto de Vida): tono aspiracional genérico**
Este capítulo es especialmente vulnerable a la artificialidad porque habla de las aspiraciones personales del estudiante:
- ❌ "Se aspira a contribuir al desarrollo tecnológico sostenible de la nación mediante la aplicación de competencias de vanguardia adquiridas..."
- ✅ **Acción:** Debe sonar a un joven concreto con metas reales: "Continuar estudios en Ingeniería de Sistemas en la UAGRM y aplicar lo aprendido en este proyecto para trabajar en desarrollo web." Concreto, sencillo, creíble.

### Restricciones obligatorias (NO violar)
- **Mantener el registro impersonal en tercera persona** (excepto Cap. 8 si el formato lo permite). NO reescribir en primera persona.
- **Conservar TODOS los comandos LaTeX** (`\section`, `\cite`, `\ref`, `\label`, `\parencite`, `\textcite`, `\input`, `\begin{itemize}`, etc.) intactos.
- **Conservar las citas bibliográficas** y datos verificables. La humanización NO implica eliminar respaldo académico.
- **No simplificar terminología técnica legítima** de la especialidad (ej. "base de datos relacional", "API REST", "diagrama de flujo", "protocolo MQTT").
- **No reducir la extensión** de los capítulos por debajo del mínimo requerido. Si se eliminan frases vacías, sustituirlas por contenido concreto y específico del proyecto.
- **Respetar el formato numérico SI/ISO 80000-1** (punto decimal, sin comas en miles).
- **Mantener la prioridad de viñetas** (`itemize`) sobre listas numeradas (`enumerate`).

### Procedimiento de humanización recomendado (por capítulo)

1. **Lectura diagnóstica:** Leer el capítulo completo e identificar los fragmentos que suenan artificiales, marcándolos por categoría (muletilla, rimbombancia, vocabulario innatural, etc.).
2. **Consulta de fuente original:** Si existe borrador original del estudiante en `docs/proyecto.md` o `docs/proyecto.rtf`, comparar y rescatar expresiones auténticas que se hayan sobreescrito.
3. **Reescritura puntual:** Reescribir SOLO los fragmentos problemáticos, no el capítulo entero. Preservar lo que ya suena bien.
4. **Verificación de concreción:** Tras cada reescritura, preguntarse: "¿Un tribunal podría leer esto y creer que lo escribió un estudiante de 18 años con apoyo de su tutor?" Si la respuesta es no, seguir simplificando.
5. **Prueba de lectura en voz alta:** El texto humanizado debe poder leerse en voz alta sin tropiezos ni sentirse como un discurso robótico. Si un párrafo suena a comunicado de prensa corporativo, necesita más trabajo.

### Formato de salida esperado
```
## Diagnóstico de naturalidad
- Nivel de artificialidad detectado: [Alto / Medio / Bajo]
- Patrón dominante de IA: [muletillas / rimbombancia / vocabulario / estructura mecánica / falta de especificidad]
- Fragmentos que ya suenan naturales (conservar): [lista de secciones o párrafos]

## Tabla de humanización por fragmento
| Ubicación (Cap./Sección/Línea) | Categoría del problema | Texto original | Texto humanizado | Justificación del cambio |
|---|---|---|---|---|

## Párrafos reescritos completos
### [Sección afectada]
**Antes (artificial):**
> [texto original]

**Después (humanizado):**
> [texto reescrito]

## Verificación post-humanización
- [ ] El registro impersonal en tercera persona se mantiene uniforme
- [ ] Todos los comandos LaTeX están intactos
- [ ] Las citas bibliográficas se conservan
- [ ] No se redujo la extensión por debajo del mínimo
- [ ] El vocabulario técnico legítimo de la especialidad se preservó
- [ ] El texto suena creíble para un estudiante BTH con apoyo tutorial
- [ ] Se eliminaron al menos el 80% de las muletillas de IA detectadas

## Recomendaciones finales de naturalidad
1. ...
```

### Contenido a humanizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el capítulo o sección a humanizar. Opcionalmente incluye el borrador original del estudiante como referencia de voz auténtica]
