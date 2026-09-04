# Prompt: Checklist Pre-Entrega y Defensa Final (BTH RM 0912/2023)

## Cuándo usar este prompt
Como última verificación previa a la impresión o entrega formal del documento PDF ante el tribunal de titulación.

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` completo y verifica el cumplimiento de todas sus reglas (formato, estilos de títulos, macros, compilación).
2. Obtén los datos del proyecto desde `estilos/configuracion.tex` para verificar que no haya texto quemado (hardcodeado) en otros archivos.
3. Ejecuta `./compilar.sh --clean` y verifica que compile sin errores `LaTeX Error` ni advertencias `Unresolved references`.
4. Lee `main.tex` para verificar la estructura completa de inclusión.
5. Lee `capitulos/index.tex` para verificar el ensamble de los 9 capítulos.
6. Verifica la existencia de todos los archivos de `preliminares/`, `capitulos/`, `tablas/`, `anexos/` y `bibliografia/`.
7. Ejecuta `./compilar.sh --check-tablas` para certificar que el 100% de las tablas cumplan con APA 7 y no desborden los márgenes.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Pega el índice final del documento y los datos del PDF compilado al final.

---

## Archivos a verificar

| Componente | Archivo(s) |
| :--- | :--- |
| Entrada principal | `main.tex` |
| Configuración y estilos | `estilos/configuracion.tex`, `estilos/estilos.sty`, `estilos/caratula.sty` |
| Preliminares | `preliminares/caratula.tex`, `preliminares/dedicatoria.tex`, `preliminares/agradecimiento.tex`, `preliminares/resumen.tex` |
| Capítulos 1-9 | `capitulos/index.tex` → 9 carpetas con `main.tex` y secciones `.tex` |
| Tablas | `tablas/*.tex` (especificaciones, cronograma, costos, plan mejora, comparación, etc.) |
| Bibliografía | `bibliografia/referencias.bib` |
| Anexos | `anexos/index.tex` → `anexo_a_canvas.tex`, `anexo_b_fichas_tecnicas.tex`, `anexo_c_codigo_fuente.tex` |
| Código fuente | `codigo/` (archivos importados via `\lstinputlisting`) |
| Compilación | `./compilar.sh --clean` → `main.pdf` |

---

## PROMPT

Actúa como el **presidente de tribunal de titulación del Bachillerato Técnico Humanístico (BTH)** para la modalidad de **Innovación Tecnológica** (RM 0912/2023). Realiza la auditoría final y definitiva del documento de proyecto de grado según el checklist oficial.

### Contexto del documento
- Modalidad: Proyecto de Grado — Innovación Tecnológica (BTH Bolivia)
- Compilación oficial: Ejecutado mediante `./compilar.sh --clean` (generación de `main.pdf`)
- Formato tipográfico y márgenes:
  * Papel carta (`letterpaper`), Arial 11pt, interlineado 1.5 en texto principal.
  * Margen izquierdo: 3.0 cm | Márgenes superior, inferior y derecho: 2.5 cm.
  * Silabación/guionado desactivado globalmente.
  * Sin encabezados de página (`headrulewidth=0pt`), números de página centrados al pie.

### Checklist Oficial a Verificar

1. **Hojas preliminares (numeración romana minúscula):**
   - [ ] Carátula oficial BTH consolidada con logos institucionales, marco perimetral azul opcional (`\activarmarcobth`), datos de autor(es) (sin campos de C.I.), tutor, UE, fórmula de grado y año de gestión.
   - [ ] Agradecimiento y Dedicatoria con formato semántico unificado (`\begin{estilodedicatoria}{Título}` alineados a la parte inferior en una misma hoja sin separación entre título y texto).
   - [ ] Índice General de Contenidos, Índice de Figuras e Índice de Tablas generados automáticamente.
   - [ ] Resumen en castellano (máx. 300 palabras), con `\palabrasclave{...}`.
   - [ ] Abstract en lengua extranjera (inglés), con `\keywords{...}`.
   - [ ] Resumen en lengua originaria (quechua, aymara o guaraní según contexto regional), con `\simikuna{...}`.

2. **Estructura de los 9 Capítulos (numeración arábiga centrada al pie):**
   - [ ] **Capítulo 1 (Introducción):** Contexto del sector, motivación y pertinencia, contribución esperada e impacto innovador.
   - [ ] **Capítulo 2 (Planteamiento del Problema):** Diagnóstico con datos empíricos, formulación del problema, objetivos general/específicos y triple justificación (técnica, social, económica).
   - [ ] **Capítulo 3 (Marco Referencial):** Antecedentes locales/nacionales/internacionales, bases teóricas y marco conceptual/normativo.
   - [ ] **Capítulo 4 (Desarrollo de la Innovación):** Especificaciones técnicas en tablas con `booktabs`, planificación por fases, recursos detallados y presupuesto de costos (inversión y operación).
   - [ ] **Capítulo 5 (Metodología):** Tipo de investigación aplicada, muestra de prueba, instrumentos de recolección y procedimiento de análisis.
   - [ ] **Capítulo 6 (Estrategia de Mejora y Proyección):** Matriz de plan de mejora continua (corto/mediano plazo) y proyección de escalamiento técnico/comercial.
   - [ ] **Capítulo 7 (Resultados):** Métricas de pruebas piloto, cuantificación de impacto y tabla comparativa "antes vs. después".
   - [ ] **Capítulo 8 (Proyecto de Vida):** Metas académicas de continuidad de estudios, competencias consolidadas y compromiso comunitario.
   - [ ] **Capítulo 9 (Conclusiones y Recomendaciones):** Cierre puntual de cada objetivo específico y recomendaciones técnicas aplicadas.

3. **Secciones Finales (sin numeración de página visible):**
   - [ ] Estilo de página limpio (`\configurarseccionfinal`) sin cabeceras ni pie de página visible.
   - [ ] **Bibliografía:** Formato APA 7ma Edición generado con `biblatex`, sin citas rotas ni referencias no citadas.
   - [ ] **Anexos:** Ensamble raíz con `\capitulopreliminar{ANEXOS}` y secciones con `\seccionanexo{...}`: Modelo Canvas (Anexo A), Fichas técnicas/cotizaciones (Anexo B) y Código fuente en Courier (Anexo C).

4. **Verificación Técnica de Compilación:**
   - [ ] Compilación limpia con `./compilar.sh --clean` sin errores `LaTeX Error` ni advertencias `Unresolved references`.
   - [ ] Sin comandos duros o texto quemado fuera de `estilos/configuracion.tex`.
   - [ ] Auditoría de tablas exitosa con `./compilar.sh --check-tablas` sin errores de formato APA 7 ni desbordamiento de página, con notas formateadas con `\notatabla`.
   - [ ] Figuras e ilustraciones bajo APA 7 con rótulo superior, centrado y notas formateadas con `\notafigura` o mediante `\incluirfigura`.
   - [ ] Formato numérico conforme a SI/ISO 80000-1 (punto decimal, sin coma para miles ni decimales).
   - [ ] Prioridad de viñetas respetada (uso predominante de `itemize` frente a `enumerate`).

### Formato de salida esperado
```
## Checklist Pre-Entrega Final BTH
| Sección / Requisito Normativo | Estado (Cumple / Pendiente / No Cumple) | Observación del Tribunal |
|---|---|---|

## Dictamen Pre-Defensa
[APROBADO PARA DEFENSA / REQUIERE AJUSTES MENORES / OBSERVADO CON REVISIÓN PENDIENTE]

## Lista de últimos ajustes indispensables antes de imprimir
1. ...
```

### Documento o datos a auditar
[Si eres un agente con acceso al repositorio, ejecuta `./compilar.sh --clean` y lee los archivos listados en "Archivos a verificar". Si usas este prompt manualmente, pega aquí el índice final, resumen ejecutivo o datos del documento compilado]
