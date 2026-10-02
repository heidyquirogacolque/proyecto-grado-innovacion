# ✍️ Guía Editorial y de Estilo Académico

> **Proyecto:** SISTEMA WEB DE INSCRIPCIÓN PARA EL MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN BTH --- VERSIÓN 2.0 | **RM 0912/2023** | **APA 7ma Ed.**

## Registro y Tono

* **Registro formal impersonal** en tercera persona (`se desarrolló`, `se implementó`, `se diagnosticó`), sin `yo/nosotros`. Objetividad científica, precisión léxica, oraciones breves.
* **Voz activa impersonal** con `se` + verbo. Evitar coloquialismos y anglicismos innecesarios (usar `autoservicio` no `self-service` salvo término definido).
* **Citas APA 7:** Parentética `\parencite{clave}` → *(UNESCO, 2024)* para apoyo; narrativa `\textcite{clave}` → *León-Velarde et al. (2024)* cuando el autor es sujeto. Nunca citas en Conclusiones.

## Tiempos Verbales por Capítulo

| Capítulo | Tiempo predominante | Uso y Ejemplo |
|---|---|---|
| **1 Introducción** | **Presente** para contexto vigente + **futuro / condicional propositivo** para contribución | Presente: *El MTP San Julián centraliza la formación BTH...* Futuro: *La plataforma generaría un ahorro superior a 20000 Bs...* `contribucion_esperada.tex:6` condicional `generaría/restituiría` distingue expectativa de evidencia. |
| **2 Planteamiento del Problema** | **Presente** diagnóstico + **infinitivo** objetivos + presente justificación | Presente: *El diagnóstico combinó análisis 2022-2025...* Infinitivo: *Diagnosticar... Diseñar... Desarrollar... Validar... Evaluar* `objetivos.tex:11-15`. |
| **3 Marco Referencial** | **Pretérito** antecedentes + **presente** bases teóricas y normativo vigente | Pretérito: *León-Velarde et al. (2024) analizaron...* Presente: *La arquitectura cliente-servidor constituye...* `\textcite{tanenbaum2021}` `bases_teoricas.tex:8`. Normativa: *La CPE consagra...* `\parencite{cpe2009}`. |
| **4 Desarrollo Innovación** | **Pretérito descriptivo** procesos ejecutados + **presente** especificaciones/costos | Pretérito: *Se desarrolló bajo arquitectura 3 capas...* Presente: *El sistema consume <1.5 MB...* `diseno.tex:52`. Costos presente: *Los costos fijos ascienden a 190.00 Bs...* `calculo_costos.tex:12`. |
| **5 Metodología** | **Pretérito descriptivo** | *Se aplicó muestreo por conveniencia a 60 estudiantes... Se ejecutaron 5 corridas Apache Benchmark...* `tecnicas_instrumentos.tex:9`. |
| **6 Estrategia de Mejora** | **Presente + futuro propositivo** | Presente: *Se diseña estrategia en 3 horizontes...* Futuro: *Se proyecta migración a VPS...* `proyeccion_escalamiento.tex:12`. |
| **7 Resultados** | **Pretérito** pruebas/datos + **presente** análisis impacto | Pretérito: *El 92% calificó...* `resultados_obtenidos.tex:7` Presente: *El ahorro supera 20000 Bs...* `beneficios_impacto.tex:9`. |
| **8 Proyecto de Vida** | **Presente reflexivo + futuro** | *Las autoras proyectan... Se aspira ingresar a Ingeniería de Sistemas...* `aspiraciones.tex:1`. |
| **9 Conclusiones y Recomendaciones** | **Pretérito/presente** conclusiones respecto a objetivos + **condicional/infinitivo** recomendaciones | Conclusión: *Se desarrolló e implementó V2.0...* `conclusiones.tex:7`. Recomendación: *Se aconseja implementar OPcache...* `recomendaciones.tex:9`. Hipótesis pretérito: *se considera demostrada* `conclusiones.tex:16`. |

## Normas Numéricas y Símbolos (SI/ISO 80000-1)

* **Punto decimal:** `12.50` `0.50` `1.5` `1.2` — **nunca coma** `12,50`.
* **Miles:** 4 dígitos sin separador `13556 Bs` `400 postulantes`; 5+ dígitos continuo o espacio `20000 Bs` (actual unificado) o `25 000.00`.
* **Espacio no separable:** `190.00~Bs`, `100~Bs/ciclo`, `>100~peticiones/min` (usar `~` en LaTeX).
* **Porcentajes:** `92\%` `100\%` `\geq90\%` con `\%`.
* **Tablas APA7:** `\notatabla{...}` pie tabla con punto decimal.

## Estructura de Citas y Bibliografía APA 7

* **BibLaTeX:** `style=apa` `backend=biber` `csquotes` `estilos/estilos.sty:191-197`.
* **Parentética:** `\parencite{hernandez2014}` → *(Hernández Sampieri et al., 2014)* para marco metodológico `diagnostico.tex:6`.
* **Narrativa:** `\textcite{leonvelarde2024}` → *León-Velarde et al. (2024)* como sujeto `antecedentes.tex:8`.
* **Múltiples:** `\parencite{marcotte2018,w3schools2025}` `marco_conceptual.tex:11`.
* **Referencias:** `bibliografia/referencias.bib` 17 entradas activas verificadas (`@book` 10, `@online` 5, `@article` 1, `@techreport` 1), claves sin espacios, mayúsculas protegidas `{PHP}` `{PostgreSQL}` `{ASP.NET}`.
* **Impresión:** `main.tex:39` `\printbibliography[heading=bibintoc, title={Bibliografía}]` con `\configurarseccionfinal` `empty`.

## Listas y Formato

* Priorizar `itemize` (viñetas) para objetivos, conclusiones, recomendaciones, características. Reservar `enumerate` para secuencias algorítmicas/flujo 5 fases `diseno.tex:34-40` y cronograma 10 fases.
* Títulos APA7: Nivel 1 `1. INTRODUCCIÓN` izquierda `-15pt` `titlesec`, Nivel 2 negrita, Nivel 3 negrita cursiva, Nivel 4-5 run-in 1.27 cm con punto.
