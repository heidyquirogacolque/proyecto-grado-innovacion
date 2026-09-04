# Prompt: Revisión de Citas y Bibliografía (APA 7ma Edición / BibLaTeX)

## Cuándo usar este prompt
Al finalizar la redacción de los capítulos y tras registrar las fuentes en `bibliografia/referencias.bib`, para garantizar correspondencia total y formato APA 7ma Edición.

---

## Instrucciones de uso

### Para agentes de IA con acceso al repositorio
1. Lee `AGENTS.md` y sigue sus reglas de citas y bibliografía (Regla 5) antes de cualquier revisión.
2. Lee `bibliografia/referencias.bib` completo para analizar las entradas existentes.
3. Busca todas las ocurrencias de `\parencite` y `\textcite` en los archivos `.tex` de `capitulos/` para mapear las citas en el texto.
4. Verifica la correspondencia biunívoca: toda cita en texto debe tener entrada en `.bib` y viceversa.

### Para uso manual (copiar y pegar)
1. Copia este prompt en la conversación con el asistente de IA.
2. Pega las citas extraídas de los capítulos y el contenido de `referencias.bib` al final.

---

## Archivos a revisar

| Archivo | Contenido |
| :--- | :--- |
| `bibliografia/referencias.bib` | Base de datos BibLaTeX con todas las referencias |
| `capitulos/01_introduccion/*.tex` a `capitulos/09_conclusiones_recomendaciones/*.tex` | Citas `\parencite{}` y `\textcite{}` en el texto |

---

## PROMPT

Actúa como un **experto en normalización bibliográfica y normas APA 7ma Edición** para documentos técnicos en LaTeX (`biblatex` con estilo `apa` y motor `biber`). Evalúa las citas dentro del texto y el archivo de referencias que te proporcionaré.

### Contexto del documento
- Modalidad: Proyecto de Grado BTH — Innovación Tecnológica
- Motor bibliográfico: `biblatex` con `style=apa` y backend `biber`
- Archivo fuente de referencias: `bibliografia/referencias.bib`
- Comandos en texto:
  * Citas parentéticas: `\parencite{clave}` ➔ *(Apellido, Año)*
  * Citas narrativas: `\textcite{clave}` ➔ *Apellido (Año)*
  * Múltiples citas: `\parencite{clave1, clave2}`

### Qué debes evaluar
1. **Correspondencia biunívoca (100% sincronía)**:
   - ¿Toda cita presente en el texto (`\parencite`, `\textcite`) tiene su entrada correspondiente en `referencias.bib`?
   - ¿Toda entrada existente en `referencias.bib` está efectivamente citada en el cuerpo del documento (sin referencias huérfanas)?
2. **Campos obligatorios según tipo de fuente en APA 7**:
   - Libros (`@book`): autor, año, título (cursiva), editorial.
   - Artículos de revista (`@article`): autor, año, título del artículo, nombre de la revista, volumen, número, páginas, DOI/URL.
   - Normas y leyes (`@misc` / `@legislation`): entidad emisora, año, título oficial, gaceta o URL.
   - Manuales técnicos y datasheets (`@manual`): fabricante/autor corporativo, año, título, versión, URL.
   - Sitios web (`@online`): autor/organización, fecha, título, URL.
3. **Calidad y actualidad de las fuentes**:
   - ¿Se citan fuentes primarias y técnicas confiables (hojas de datos, estándares oficiales, artículos indexados) en lugar de blogs informales?
4. **Sintaxis BibLaTeX**:
   - Claves de citación sin espacios ni caracteres especiales.
   - Llaves de protección de mayúsculas en nombres propios (`{Arduino}`, `{Bolivia}`).

### Formato de salida esperado
```
## Diagnóstico de normalización APA 7
- Total citas en texto analizadas: X
- Total entradas en referencias.bib: Y
- Nivel de correspondencia: [%]

## Citas en texto sin entrada en referencias.bib (Errores críticos)
| Cita en texto | Capítulo / Ubicación | Acción requerida |
|---|---|---|

## Entradas en referencias.bib no citadas en texto (Referencias huérfanas)
| Clave de referencia | Título | Sugerencia |
|---|---|---|

## Errores de formato en campos BibLaTeX
| Clave | Campo defectuoso o faltante | Corrección sugerida |
|---|---|---|

## Recomendaciones finales
1. ...
```

### Insumos a analizar
[Si eres un agente con acceso al repositorio, lee directamente `bibliografia/referencias.bib` y busca `\parencite`/`\textcite` en todos los archivos de `capitulos/`. Si usas este prompt manualmente, pega a continuación:]

1. Citas extraídas de los capítulos:
[Pega aquí los párrafos con citas o la lista de comandos \parencite y \textcite]

2. Contenido de bibliografia/referencias.bib:
[Pega aquí el contenido de tu archivo .bib]
