# Prompt: Revisión del Proyecto de Vida (Capítulo 8)

## Cuándo usar este prompt
Al finalizar el borrador del **Capítulo 8: Proyecto de Vida** (`capitulos/08_proyecto_vida/main.tex`).

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`, `\autoruno`, `\autordos`).
3. Lee directamente `capitulos/08_proyecto_vida/main.tex` (archivo único con contenido directo, sin sub-archivos).
4. Lee `capitulos/04_desarrollo_innovacion/diseno.tex` y `capitulos/07_resultados/resultados_obtenidos.tex` para verificar que las competencias mencionadas sean coherentes con el trabajo técnico efectivamente documentado.
5. Consulta `docs/ficha-proyecto.md` (Sección 8) para contrastar aspiraciones y competencias con la ficha.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Pega el contenido LaTeX del capítulo al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `capitulos/08_proyecto_vida/main.tex` | Contenido completo del capítulo (secciones 8.1, 8.2 y 8.3 directamente) |
| **Dato cruzado:** `capitulos/04_desarrollo_innovacion/diseno.tex` | Actividades técnicas realizadas |
| **Dato cruzado:** `capitulos/07_resultados/resultados_obtenidos.tex` | Logros técnicos documentados |

---

## PROMPT

Actúa como un **evaluador pedagógico y formativo del Bachillerato Técnico Humanístico (BTH)**. Evalúa el **Capítulo 8: Proyecto de Vida** que te proporcionaré, verificando la madurez reflexiva del estudiante (o de ambos estudiantes si es en parejas), la articulación entre el proyecto tecnológico y su futuro vocacional, y su sentido de responsabilidad comunitaria.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Nombre(s) del/los estudiante(s): [lee `\autoruno` (y `\autordos` si aplica) de `estilos/configuracion.tex` o completa aquí]
- Contenido evaluado en `capitulos/08_proyecto_vida/main.tex`:
  * Sección 8.1: Aspiraciones académicas y profesionales (continuidad de estudios en carreras universitarias o técnicas afines).
  * Sección 8.2: Competencias técnicas y socioemocionales desarrolladas (hard skills aplicadas en la innovación y soft skills como trabajo en equipo, resolución de problemas y perseverancia).
  * Sección 8.3: Compromiso ético y proyección comunitaria (impacto social de la profesión técnica, emprendimiento productivo y retribución a la comunidad).
- Formato: comandos LaTeX (`\chapter`, `\section`, `\label`) deben preservarse.

### Qué debes evaluar
1. **Articulación vocacional**: ¿las metas de educación superior o técnicas guardan estrecha coherencia con la especialidad cursada y la tecnología desarrollada en el proyecto?
2. **Reflexión sobre competencias**: ¿el o los estudiantes identifican con precisión tanto conocimientos técnicos especializados (diseño, programación, calibración) como habilidades blandas consolidadas durante la superación de dificultades técnicas?
3. **Compromiso ético y social**: ¿se expresa una visión ética sobre el uso de la tecnología y una disposición tangible para contribuir al desarrollo productivo de su comunidad?
4. **Tono y registro**: ¿mantiene un tono reflexivo pero formal y maduro, acorde a un futuro egresado del bachillerato técnico humanístico?
5. **Modalidad en parejas (si aplica)**: si el proyecto cuenta con dos autores, ¿se integran armónicamente las reflexiones y aspiraciones de ambos estudiantes?

### Formato de salida esperado
```
## Diagnóstico del Proyecto de Vida
[Evaluación global de la introspección vocacional y madurez técnica]

## Análisis por áreas
| Área | Nivel de desarrollo | Observación formativa |
|---|---|---|
| Aspiraciones académicas y profesionales | [Alto / Medio / Inicial] | ... |
| Competencias técnicas y socioemocionales | [Alto / Medio / Inicial] | ... |
| Compromiso ético y comunitario | [Alto / Medio / Inicial] | ... |

## Sugerencias para enriquecer la reflexión vocacional
1. ...
```

### Contenido a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de `capitulos/08_proyecto_vida/main.tex`]
