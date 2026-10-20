# 🔬 Resumen Metodológico Transversal

> **Proyecto:** SISTEMA WEB DE INSCRIPCIÓN PARA EL MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN BTH --- VERSIÓN 2.0 | **RM 0912/2023 Innovación Tecnológica**

## Enfoque Metodológico

**Mixto (cualitativo + cuantitativo)** `capitulos/05_metodologia/tipo_investigacion.tex:4`: integra percepciones de usabilidad/accesibilidad/satisfacción con métricas operativas (tiempos, latencia, consistencia cupos). Investigación **aplicada y tecnológica** `tipo_investigacion.tex:6` que soluciona problemática institucional concreta mediante ingeniería web, no teoría abstracta.

## Tipo y Nivel de Investigación

* **Finalidad:** Aplicada y tecnológica.
* **Alcance:** **Descriptivo-propositivo y evaluativo** `tipo_investigacion.tex:8` — caracteriza realidad operativa 2022-2025, propone V2.0 integral y evalúa desempeño/sostenibilidad con indicadores observables.
* **Diseño:** **Pre-experimental con medición antes (2022-2025 manual/V1.0 sin recovery) vs después (2026 V2.0)**, transversal y propositivo `tipo_investigacion.tex:10` según Hernández-Sampieri Cap.7, en 4 fases canónicas formalizadas en OE1-OE5: **Fase1 Diagnóstico → Fase2 Diseño UML/BD → Fase3 Desarrollo 3 capas → Fase4 Evaluación técnica/socioeducativa/sostenibilidad** `tipo_investigacion.tex:13-16`.

## Población y Muestra de Validación

* **Población humana:** ~400 postulantes anuales distrito San Julián en 7 especialidades (Construcción Civil, Contaduría, Electrónica, Gastronomía, Mecánica Automotriz, Sistemas Informáticos, Textiles) + plantel docente/directivo/secretaría `poblacion_muestra.tex:6`.
* **Muestra humana:** **60 estudiantes + 5 funcionarios** `poblacion_muestra.tex:10-14` por **conveniencia intencional** (representatividad unidades educativas y vocaciones), accesibilidad periodos prueba. **~15% población**.
* **Unidades experimentales técnicas:** Independientes de sujetos humanos `poblacion_muestra.tex:16-18` — **7 carreras × 5 corridas Apache Benchmark 2.4.58 a >100 peticiones/min, latencia <1.2 s, auditoría logs PostgreSQL 16.4 `FOR UPDATE`, 0 sobrecupos**.

## Técnicas e Instrumentos

| Técnica | Instrumento | Validación / Calibración | Mide |
|---|---|---|---|
| Encuesta estructurada | Cuestionario Likert 1-5 (navegación, claridad, autonomía recovery, confianza vacantes) | Juicio tutor + piloto 5 estudiantes `tecnicas_instrumentos.tex:7` | VD5 satisfacción ≥90%, VD2 autonomía |
| Entrevista semiestructurada | Guía preguntas abiertas secretaría/dirección | Guía tutor `tecnicas_instrumentos.tex:8` | VD3 sobrecarga, VD4 cruces horarios |
| Pruebas técnicas / Benchmarking | Caja negra C.I.+fecha, integridad referencial PostgreSQL, logs Apache/PostgreSQL, **Apache Benchmark 2.4.58** | Tolerancia latencia <1.2 s, ACID `FOR UPDATE`, >100 req/min `tecnicas_instrumentos.tex:9` | VD1 tiempo, VD3 trazabilidad 100%, VD4 consistencia 100%, VD6 errores <5% |

## Métricas e Indicadores de Rendimiento

**Variable Independiente:** V2.0 Sistema Web 3 capas (HTML5/CSS3/JS/PHP 8.2/PostgreSQL 16.4). **Variables Dependientes** `tab:operacionalizacion` `tipo_investigacion.tex:18`:
* Tiempo gestión: `1-3 días → 3-5 min (-90%)`, recovery `<2 min` (minutos)
* Trazabilidad: `100%` expedientes auditables (%)
* Consistencia cupos: `100%` sin colisiones, `>100 req/min` (peticiones/min)
* Satisfacción: `92%` (≥90%) Likert 60 (%)
* Errores registro: `35% → <5%` (-86%) (%)
* Ahorro: `>20000 Bs/año` vs inversión `13574 Bs` + `190 Bs/mes` + `<0.50 Bs` marginal (Bs) — `analisis_datos.tex:10` costo-beneficio
* Disponibilidad: `8h → 24h (+200%)`, consumo `<1.5 MB` (horas, MB)

**Procedimiento análisis** `capitulos/05_metodologia/analisis_datos.tex:7-10`: **Descriptiva** (frecuencias Likert) + **Comparativo Antes vs Después** + **Auditoría logs/Integridad ACID** + **Costo-beneficio**; **criterio validación hipótesis:** `latencia <1.2 s en ≥95% peticiones, 0 colisiones, trazabilidad 100%, usabilidad ≥90%, errores <5%` `analisis_datos.tex:12`; sin prueba inferencial por conveniencia.

## Hipótesis Tecnológica

`Si V2.0 con autoservicio C.I.+fecha + ACID FOR UPDATE → tiempo -90% (3-5 min), recovery <2 min, trazabilidad 100%, consistencia 100%` `objetivos.tex:20`, contrastada Cap.7 `Tabla~\ref{tab:comparacion_antes_despues}` y cerrada Cap.9 `conclusiones.tex:16` como idea a defender si tribunal no exige contraste formal (`AGENTS.md §14`).

## Sincronía 5 Ejes

**Cap.2 (Problema 3 brechas + 5 OE + hipótesis) ↔ Cap.4 (V2.0 7 módulos 3 capas) ↔ Cap.5 (método pre-experimental + operacionalización) ↔ Cap.7 (4 resultados + Tabla comparativa) ↔ Cap.9 (8 conclusiones + tablero semestral).**
