# Prompt: Coherencia y Sincronía Global (Los 9 Capítulos BTH)

## Cuándo usar este prompt
Cuando el borrador completo de los **9 capítulos** esté redactado, antes de proceder a la corrección de estilo y maquetación final. Es la auditoría integradora esencial.

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de formato LaTeX antes de cualquier revisión.
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` (`\tituloproyecto`, `\especialidad`).
3. Lee los 9 `main.tex` de cada capítulo y todas sus secciones `.tex` (ver tabla abajo).
4. Lee `bibliografia/referencias.bib` para verificar correspondencia de citas.
5. Consulta `docs/ficha-proyecto.md` como referencia cruzada de datos consolidados.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Pega el contenido de los 9 capítulos al final.

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

Actúa como un **auditor técnico y metodológico de proyectos de grado**. Tu misión es evaluar los 9 capítulos del proyecto de grado en la modalidad de **Innovación Tecnológica** para certificar su **coherencia argumental total**, **sincronía matemática/empírica** y **ausencia de contradicciones internas**.

### Contexto del documento
- Modalidad: Innovación Tecnológica (BTH Bolivia, RM 0912/2023)
- Especialidad técnica: [lee `\especialidad` de `estilos/configuracion.tex` o completa aquí]
- Título del proyecto: [lee `\tituloproyecto` de `estilos/configuracion.tex` o completa aquí]
- Formato: comandos LaTeX (`\section`, `\ref`, `\cite`, `\input`) deben preservarse.

### Criterios de auditoría global

1. **Hilo conductor y sincronía (Problema ➔ Hipótesis/Objetivos ➔ Prototipo/Variables ➔ Validación ➔ Impacto ➔ Conclusiones):**
   - ¿El problema diagnosticado en el Cap. 2 es exactamente lo que resuelve la innovación diseñada en el Cap. 4?
   - ¿La Variable Independiente (prototipo/solución del Cap. 4) incide directamente sobre las Variables Dependientes medidas en el Cap. 5 y 7?
   - ¿Las métricas evaluadas en el Cap. 5 y 7 demuestran de forma empírica la solución planteada en el Cap. 2 y contrastan la hipótesis (si aplica)?
   - ¿Cada objetivo específico formulado en el Cap. 2 tiene su desarrollo en el Cap. 4, su operacionalización en el Cap. 5, su resultado medido en el Cap. 7 y su conclusión de cierre en el Cap. 9?

2. **Consistencia numérica y paramétrica:**
   - ¿Los costos de inversión y componentes calculados en el Cap. 4 coinciden con los montos citados en el Cap. 2 (justificación) y Cap. 7 (análisis costo-beneficio)?
   - ¿Las especificaciones técnicas (voltajes, dimensiones, capacidades, tolerancias) son idénticas en Cap. 3, 4, 5 y 7?
   - ¿El tamaño de la muestra o unidades de prueba evaluadas en el Cap. 5 coincide con los datos presentados en el Cap. 7?
   - ¿El formato numérico es homogéneo en todo el texto y tablas? (Uso obligatorio de punto `.` para decimales como `12.50` y ausencia de comas o puntos en millares, ej. `4500` o `25 000` según norma SI/ISO 80000-1).

3. **Consistencia terminológica y conceptual:**
   - ¿Se utiliza la misma terminología técnica y denominación del prototipo a lo largo de los 9 capítulos, sin ambigüedades?
   - ¿Las competencias y reflexiones del Proyecto de Vida (Cap. 8) son coherentes con las actividades técnicas efectivamente documentadas en los capítulos previos?

### Formato de salida esperado
```
## Diagnóstico ejecutivo de sincronía
- Nivel de sincronía global: X/10
- Hallazgos críticos detectados: [lista o "Ninguno"]
- Fortalezas de coherencia: ...

## Matriz de alineación transversal de investigación
| Eje temático / Variable | Cap. 2 (Problema/Obj/Hipótesis) | Cap. 4 (Innovación / VI) | Cap. 5 (Método / Instrumentos) | Cap. 7 (Resultados / VD) | Cap. 9 (Conclusiones) | ¿Alineado? |
|---|---|---|---|---|---|---|
| Eje 1 (Diagnóstico / Línea base) | ... | ... | ... | ... | ... | ... |
| Eje 2 (Desarrollo tecnológico) | ... | ... | ... | ... | ... | ... |
| Eje 3 (Validación e impacto) | ... | ... | ... | ... | ... | ... |

## Discrepancias numéricas o conceptuales detectadas
| Parámetro / Variable | Valor en Cap. A | Valor en Cap. B | Observación de discrepancia |
|---|---|---|---|

## Plan de acción correctiva priorizado
1. ...
```

### Capítulos a analizar
[Si eres un agente con acceso al repositorio, lee directamente los archivos listados en "Archivos a revisar". Si usas este prompt manualmente, pega aquí el contenido de los 9 capítulos]
