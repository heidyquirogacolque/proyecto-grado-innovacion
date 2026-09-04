# Repositorio de Código Fuente (`codigo/`)

En este directorio se almacenan todos los archivos de código fuente, scripts, algoritmos y programas desarrollados en el proyecto (ejemplos: `.py`, `.c`, `.cpp`, `.ino`, `.sql`, `.java`, `.js`, `.sh`, `.html`, `.css`, etc.).

---

## 📌 ¿Cómo importar archivos de código en los capítulos o anexos de LaTeX?

En lugar de copiar y pegar el código dentro de los archivos `.tex`, utiliza la instrucción `\lstinputlisting`:

```latex
\lstinputlisting[language=Python, caption={Algoritmo de control del sensor.}, label={lst:sensor}]{codigo/ejemplo_controlador.py}
```

### Opciones Comunes:
- `language`: Lenguaje de programación (`Python`, `C`, `C++`, `Java`, `SQL`, `bash`, `HTML`, `XML`, etc.).
- `caption`: Descripción del código que aparecerá debajo del recuadro.
- `label`: Etiqueta para hacer referencias cruzadas en el texto (ej. `según se observa en el Código~\ref{lst:sensor}`).
- `firstline` / `lastline` (Opcional): Para importar solo un fragmento de líneas específicas:
  ```latex
  \lstinputlisting[language=Python, firstline=10, lastline=25, caption={Función de lectura.}]{codigo/ejemplo_controlador.py}
  ```
