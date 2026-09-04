# Directorio de Anexos (`anexos/`)

En este directorio se almacenan los archivos modulares que corresponden a los anexos, apéndices y documentos complementarios del proyecto de grado.

---

## 📁 Estructura del Directorio

```text
anexos/
├── index.tex                     # Archivo de ensamble general de anexos
├── anexo_a_canvas.tex            # Anexo A: Lienzo de Modelo de Negocio (Canvas)
├── anexo_b_fichas_tecnicas.tex   # Anexo B: Cotizaciones y fichas técnicas
├── anexo_c_codigo_fuente.tex     # Anexo C: Código fuente importado
└── README.md                     # Guía de uso (este archivo)
```

---

## 📌 ¿Cómo agregar un nuevo anexo?

1. Crea un nuevo archivo `.tex` dentro de `anexos/` (ej. `anexos/anexo_d_encuestas.tex`).
2. Redacta el contenido usando la macro semántica `\seccionanexo{Título del Anexo}` (agrega automáticamente el título y la entrada al índice de contenidos):
   ```latex
   \seccionanexo{Anexo D: Cuestionario de Encuesta Aplicada}
   
   Contenido del anexo...
   ```
3. Incluye el archivo en `anexos/index.tex`:
   ```latex
   \input{anexos/anexo_d_encuestas}
   ```
4. Compila con `./compilar.sh`.
