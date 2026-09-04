# 📋 Ficha de Datos del Proyecto — Innovación Tecnológica

> **Propósito:** Este archivo recopila los datos crudos (cifras, nombres, fechas, fuentes) que alimentan la redacción de cada capítulo del documento LaTeX de Innovación Tecnológica.
> No escriba prosa formal aquí; solo responda con datos concretos. Los valores marcados `[DATO PENDIENTE]` deben ser completados antes de redactar.

---

## Estructura del directorio `capitulos/`

```text
capitulos/
├── index.tex                                          # Ensamble de los 9 capítulos
├── 01_introduccion/
│   ├── main.tex                                       # Cap. 1 — INTRODUCCIÓN (ensamble)
│   ├── contexto_general.tex                           #   └ Contexto general del sector
│   ├── motivacion_pertinencia.tex                     #   └ Motivación y pertinencia
│   └── contribucion_esperada.tex                      #   └ Contribución esperada
├── 02_planteamiento_problema/
│   ├── main.tex                                       # Cap. 2 — PLANTEAMIENTO DEL PROBLEMA
│   ├── diagnostico.tex                                #   └ Diagnóstico y descripción de la realidad
│   ├── identificacion_problema.tex                    #   └ Identificación del problema
│   ├── formulacion_problema.tex                       #   └ Formulación del problema
│   ├── objetivos.tex                                  #   └ Objetivos (general + específicos)
│   └── justificacion.tex                              #   └ Justificación
├── 03_marco_referencial/
│   ├── main.tex                                       # Cap. 3 — MARCO REFERENCIAL
│   ├── antecedentes.tex                               #   └ Antecedentes del proyecto
│   ├── bases_teoricas.tex                             #   └ Bases teóricas
│   └── marco_conceptual.tex                           #   └ Marco conceptual y normativo
├── 04_desarrollo_innovacion/
│   ├── main.tex                                       # Cap. 4 — DESARROLLO DE LA INNOVACIÓN
│   ├── diseno.tex                                     #   └ Diseño (características, utilidad, calidad)
│   ├── planificacion.tex                              #   └ Planificación y cronograma
│   ├── recursos.tex                                   #   └ Recursos (humanos, materiales, financieros)
│   └── calculo_costos.tex                             #   └ Cálculo de costos (inversión, operación, variables, fijos)
├── 05_metodologia/
│   ├── main.tex                                       # Cap. 5 — METODOLOGÍA
│   ├── tipo_investigacion.tex                         #   └ Tipo de investigación
│   ├── poblacion_muestra.tex                          #   └ Población y muestra
│   ├── tecnicas_instrumentos.tex                      #   └ Técnicas e instrumentos
│   └── analisis_datos.tex                             #   └ Procedimiento de análisis de datos
├── 06_estrategia_mejora/
│   ├── main.tex                                       # Cap. 6 — ESTRATEGIA DE MEJORA Y PROYECCIÓN
│   ├── plan_mejora.tex                                #   └ Plan de mejora continua
│   └── proyeccion_escalamiento.tex                    #   └ Proyección y escalamiento
├── 07_resultados/
│   ├── main.tex                                       # Cap. 7 — RESULTADOS
│   ├── resultados_obtenidos.tex                       #   └ Resultados obtenidos
│   ├── beneficios_impacto.tex                         #   └ Beneficios e impacto
│   └── comparacion_antes_despues.tex                  #   └ Comparación antes vs. después
├── 08_proyecto_vida/
│   └── main.tex                                       # Cap. 8 — PROYECTO DE VIDA
└── 09_conclusiones_recomendaciones/
    ├── main.tex                                       # Cap. 9 — CONCLUSIONES Y RECOMENDACIONES
    ├── conclusiones.tex                               #   └ Conclusiones
    └── recomendaciones.tex                            #   └ Recomendaciones
```

---

## 0. Datos Generales e Institucionales

> Estos datos alimentan `estilos/configuracion.tex`, la carátula y las páginas preliminares.

- **Nombre de la institución educativa:** MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN
- **Departamento / Provincia / Localidad:** Santa Cruz / Ñuflo de Chávez / San Julián — Distrito Educativo San Julián
- **Programa o carrera:** SISTEMAS INFORMÁTICOS (Técnico Medio) — Nivel Secundario Comunitario Productivo, Bachillerato Técnico Humanístico (BTH)
- **Título del proyecto de grado:** SISTEMA WEB DE INSCRIPCIÓN PARA EL MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN BTH — VERSIÓN 2.0
- **Subtítulo o nombre comercial del producto/servicio:** Integración de Autoservicio de Credenciales, Matriculación Documental Auditada y Asignación Automatizada por Unidad Educativa
- **Nombre(s) completo(s) del/los autor(es):** Heidy Quiroga Colque y Sharon Liz Quino
- **Correo electrónico del autor:** [DATO PENDIENTE]
- **Nombre completo del tutor/asesor:** Ing. Juan Vladimir Ramirez Flores
- **Grado académico y cargo del tutor:** Ingeniero — Tutor Guía de Especialidad
- **Ciudad y país de presentación:** San Julián, Santa Cruz – Bolivia
- **Fecha de presentación (mes y año):** 2026 (Gestión 2026)
- **Gestión académica:** Gestión 2026

### Páginas preliminares

- **Dedicatoria** — ¿A quién(es) se dedica y por qué en una frase?: A Dios porque nos ha iluminado en todo tiempo, a los estudiantes porque son nuestra razón de trabajo y a nuestras familias quienes a lo largo de este trabajo nos apoyaron con su comprensión.
- **Agradecimiento** — personas o instituciones a mencionar (nombre + relación): A Dios por darnos la vida; a docentes que guiaron el trabajo; a compañeros protagonistas del proceso de concreción.
- **Resumen en castellano** — ¿cuál es el problema, qué se hizo y qué resultado se obtuvo? (3 frases factuales): El presente proyecto desarrolla el Sistema Web de Inscripción MTP San Julián BTH V2.0 articulando 7 especialidades (Construcción Civil, Contaduría Pública, Electrónica, Gastronomía, Mecánica Automotriz, Sistemas Informáticos, Textiles y Confecciones) con arquitectura cliente-servidor 3 capas (HTML5, CSS3, JavaScript, PHP 8.x, PostgreSQL 16 ACID). Resuelve 3 problemas críticos: erradica filas presenciales con autoservicio de recuperación de credenciales (<2 min), sistematiza matriculación documental auditando libretas 1ro-3ro, cédula tutores, carnet y certificado de nacimiento, y automatiza distribución en cursos/paralelos por unidad educativa de procedencia. Siguiendo 4 fases del método científico con 60 postulantes y 5 funcionarios, garantizó 100% expedientes probatorios, eliminó pernoctaciones y ahorró >20.000 Bs anuales.
- **Resumen en lengua extranjera** (inglés, portugués u otro): This project delivers the Web Enrollment System for MTP San Julián BTH V2.0 across 7 specialties (Civil Construction, Public Accounting, Electronics, Gastronomy, Automotive Mechanics, Computer Systems, Textiles and Apparel) built on 3-tier client-server (HTML5, CSS3, JS, PHP 8.x, PostgreSQL 16 ACID). It resolves queues via self-service credential recovery (<2 min), formalizes documentary enrollment auditing report cards 1st-3rd year, IDs and birth certificates, and automates section placement by feeder school. With 60 applicants and 5 staff, achieved 100% traceability, eradicated queues, saved >20,000 Bs annually.
- **Resumen en lengua originaria** (aymara, quechua u otra): Guaraní — Ko tembiapo pyahu omopu'ã Sistema Web de Inscripción MTP San Julián BTH-pe guarã — Versión 2.0, pokõi mbo'esyry técnicos ndive (Óga Aponde, Papapy Ñemotenonde, Mba'ehenduha Ha Mba'erendy, Tembi'u Aponde, Mba'yrumýi Ñemyatyrõ, Tembipuru'i Mba'ereko ha Ao Aponde). Peteĩ arquitectura mbohapy vore rupive (HTML5, CSS3, JS, PHP 8.x ha PostgreSQL 16 ACID), omyatyrõ mbohapy apañuãi: recuperación <2 min, auditoría libretas 1ro-3ro etc., distribución por colegio origen. 60 temimbo'e, >20.000 Bs ahorro.
- **Palabras clave** (mínimo 3, máximo 6): Sistema Web, Inscripción BTH, Credenciales, Matriculación Documental, Paralelos, San Julián, PostgreSQL (7 términos — fuente usa 7)

> **Nutre:** `estilos/configuracion.tex`, `preliminares/caratula.tex`, `preliminares/dedicatoria.tex`, `preliminares/agradecimiento.tex`, `preliminares/resumen.tex`

---

## 1. INTRODUCCIÓN

### 1.1 Contexto general

- **Sector o área de aplicación del proyecto:** Educación Técnica / Tecnología educativa / Gestión escolar digital — Innovación Tecnológica BTH — Sistemas Informáticos
- **Ámbito geográfico donde se implementa:** Municipio de San Julián, provincia Ñuflo de Chávez, departamento Santa Cruz, Bolivia — Distrito Educativo San Julián — Módulo Tecnológico Productivo San Julián (centraliza BTH para unidades educativas del distrito)
- **Población o grupo social al que se dirige:** Estudiantes de nivel secundario procedentes de diversas unidades educativas del distrito municipal que aspiran a BTH; 400 postulantes anuales aprox. distribuidos en 7 especialidades; cientos de postulantes cada inicio de gestión que buscan título Técnico Medio
- **Situación actual del sector en Bolivia — cifra o dato relevante:** Demanda masiva de plazas sobrepasa capacidad física instalada de aulas/talleres; 2022-2024 registro manuscrito en ventanillas con filas días a intemperie, desgaste físico, pérdidas laborales; 2025 versión preliminar web sin recuperación de contraseñas provocó regreso masivo y pérdida de cupos vocacionales; sin sistema de matriculación documental ni asignación a paralelos
  - **Fuente:** Diagnóstico retrospectivo gestiones 2022-2025 + relevamiento empírico campo primer bimestre 2026 (encuestas + entrevistas directivos/docentes/administrativos); fuente institucional MTP San Julián

### 1.2 Motivación y pertinencia

- **¿Qué evento, experiencia o necesidad personal originó la idea?:** Experiencia directa de filas nocturnas a intemperie 2022-2024, frustración vocacional por olvido de contraseña en plataforma 2025 (pérdida de cupos en carreras demandadas), sobrecarga docente/administrativa en recepción manual de carpetas (libretas 1ro-3ro, cédulas, certificados) y elaboración manual de listas de paralelos con desequilibrios y cruces horarios
- **¿Por qué esta solución es relevante ahora?** (política pública, tendencia, normativa): Necesidad de modernizar gestión BTH, completar ciclo preinscripción-matriculación-distribución; responde al Reglamento de Graduación BTH RM 0912/2023 que exige proyectos que resuelvan problemáticas institucionales con competencias técnicas; valida la innovación como transformación práctica institucional mediante actualización tecnológica
  - **Fuente o referencia de la pertinencia:** Resolución Ministerial RM 0912/2023 Ministerio de Educación del Estado Plurinacional de Bolivia (2023); Sujovich y Biocca (2024) p.15: «la innovación educativa constituye una transformación práctica de las estructuras institucionales mediante la actualización tecnológica»

### 1.3 Contribución esperada

- **¿Qué tipo de solución se propone?** (producto físico, app, sistema, servicio): Sistema Web integral — SISTEMA WEB DE INSCRIPCIÓN MTP SAN JULIÁN BTH — VERSIÓN 2.0 — plataforma web cliente-servidor 3 capas (Frontend HTML5 CSS3 JS, Backend PHP 8.x Apache, BD PostgreSQL 16 ACID row-level locking) con 7 módulos: preinscripción con control atómico vacantes, autoservicio credenciales, matriculación documental, asignación cursos/paralelos por unidad educativa, comprobantes PDF con código verificación, panel reportes
- **¿Qué mejora concreta genera respecto a la situación actual?:** Reduce tiempo total trámite de 1-3 días fila física a 3-5 minutos web (-90%); recuperación credenciales <2 min autónoma vs horas/días fila ventanilla; 100% trazabilidad documental vs expedientes incompletos; 0 cruces horarios vs planillas manuales con errores; disponibilidad 24h vs 8h ventanilla (+200%); erradica pernoctaciones (-100%); errores formulario 35%→<5% (-88%); ahorro >20.000 Bs/año familias (pasajes 3 Bs/tramo) y >1500 hojas papel; 100% consistencia cupos ACID >100 peticiones/min <1,2s latencia
- **¿La innovación es incremental (mejora algo existente) o disruptiva (algo nuevo)?:** Incremental — optimización Versión 2.0 sobre Versión preliminar 2025 — integra 3 vacíos críticos (recovery, matriculación documental, paralelos) y añade integralidad cliente-servidor ACID; con alcance disruptivo en gestión integral BTH distrital

> **Nutre:** `capitulos/01_introduccion/main.tex` → `contexto_general.tex`, `motivacion_pertinencia.tex`, `contribucion_esperada.tex`

---

## 2. PLANTEAMIENTO DEL PROBLEMA

### 2.1 Diagnóstico y descripción de la realidad

- **Lugar exacto del diagnóstico** (institución, comunidad, empresa): MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN, municipio San Julián, Santa Cruz — 7 especialidades: Construcción Civil, Contaduría Pública, Electrónica, Gastronomía, Mecánica Automotriz, Sistemas Informáticos, Textiles y Confecciones
- **Fecha(s) del diagnóstico de campo:** Gestiones 2022 a 2025 análisis retrospectivo + primer bimestre Gestión 2026 relevamiento empírico de campo
- **Técnica usada para diagnosticar:** Encuestas a estudiantes postulantes + entrevistas en profundidad a directivos, docentes y personal administrativo
- **Número de personas/unidades consultadas:** No especificado global, pero muestra validación 60 estudiantes + 5 funcionarios; período 2022-2024 filas masivas días anticipación, 2025 cientos de reseteos manuales
- **Hallazgo cuantitativo principal:** Limitación funcional crítica 2025: 0 mecanismo recuperación autónoma credenciales → cientos debieron concurrir masivo a reseteo manual, pérdida de cupos vocacionales en carreras demandadas mientras hacían fila
  - **Fuente:** Relevamiento campo 2026 + registros institución 2025 (fila ventanilla reseteo)
- **Segundo hallazgo relevante:** Ruptura continuidad administrativa: preinscripción web cierre gestión previa sin sistema para matriculación documental definitiva gestión siguiente (libretas 1ro-3ro, cédula tutores, carnet, certificado nacimiento) → descontrol archivo carpetas físicas, expedientes incompletos, sobrecarga secretaría
  - **Fuente:** Entrevistas secretaría académica 2026
- **Deficiencia o carencia más crítica detectada:** Falta mecanismo automatizado asignación a cursos/paralelos por unidad educativa de procedencia → planillas externas manuales, errores transcripción, sobrepoblación talleres, conflictos coordinación horaria módulo vs unidades educativas distrito

### 2.2 Identificación del problema

- **Enunciado del problema central** (una oración clara): Ausencia de un sistema web integral que garantice recuperación autónoma de credenciales, matriculación documental auditada y asignación automatizada a cursos/paralelos por unidad educativa en el MTP San Julián BTH, provocando pérdida de cupos vocacionales, expedientes truncos y desequilibrios horarios
- **¿A quiénes afecta directamente?** (cantidad y perfil): ~400 postulantes anuales secundaria distrito San Julián (7 especialidades) + 5 funcionarios (director, secretaría, docentes especialidad) + familias agrícolas/comerciales que pernoctan días
- **¿Desde cuándo existe el problema?:** Fase presencial tradicional 2022-2024 (filas intemperie) y Fase digital preliminar 2025 (fallo recovery) — diagnosticado hasta primer bimestre 2026
- **Consecuencias si el problema no se resuelve:** Persistencia filas nocturnas intemperie con riesgo físico/climático, frustración vocacional (matrícula en carreras no deseadas), expedientes incompletos/extravío, sobrecarga administrativa, cruces horarios, inequidad acceso educación técnica
- **Causa raíz 1:** Carencia de autoservicio de credenciales (validación C.I. + fecha nacimiento) en plataforma web 2025
- **Causa raíz 2:** Inexistencia de módulos administrativos para auditoría documental y distribución por colegio origen (planillas manuales externas)

### 2.3 Formulación del problema

- **Pregunta de investigación principal:** ¿De qué manera el desarrollo e implementación del Sistema Web de Inscripción Versión 2.0 para el Módulo Tecnológico Productivo San Julián BTH permite resolver de forma integral la recuperación autónoma de credenciales, el registro documental de la matriculación y la asignación automatizada a cursos y paralelos según la unidad educativa de origen, garantizando un proceso escolar equitativo, eficiente y ordenado?
- **Pregunta específica 1:** ¿Qué arquitectura y mecanismos de autoservicio de credenciales permiten a los postulantes recuperar de forma inmediata y segura sus cuentas de acceso, erradicando la concurrencia presencial masiva para reseteos manuales y garantizando la reserva oportuna de cupos en la especialidad técnica de su vocación?
- **Pregunta específica 2:** ¿De qué forma estructurar un módulo administrativo de matriculación documental que permita a la secretaría del BTH registrar, cotejar y auditar en la gestión lectiva correspondiente la presentación física de las libretas de calificaciones de 1ro a 3ro de secundaria, cédula de identidad de tutores, carnet de identidad y certificado de nacimiento?
- **Pregunta específica 3:** ¿Cómo diseñar un módulo de distribución y organización académica que asigne y matricule automáticamente a los estudiantes en sus cursos y paralelos específicos en función de la unidad educativa de procedencia a la que pertenecen, asegurando la compatibilidad horaria y el equilibrio de estudiantes por aula y taller?

### 2.4 Objetivos

- **Objetivo general** (verbo en infinitivo + qué + para qué): Desarrollar e implementar el SISTEMA WEB DE INSCRIPCIÓN PARA EL MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN BTH — VERSIÓN 2.0, mediante una arquitectura cliente-servidor basada en HTML5, CSS3, JavaScript, PHP y PostgreSQL, para garantizar la recuperación autónoma de credenciales, el registro documental de la matriculación y la asignación automatizada a cursos y paralelos según la unidad educativa de origen, asegurando un proceso escolar equitativo, eficiente y transparente.
- **Objetivo específico 1:** Diagnosticar las deficiencias operativas y los requerimientos funcionales del proceso de inscripción y matriculación en el BTH de San Julián, mediante encuestas y entrevistas a la comunidad escolar.
- **Objetivo específico 2:** Diseñar la arquitectura del sistema web, los modelos de base de datos y la interfaz de usuario para la gestión de credenciales, matriculación documental y distribución de cursos y paralelos.
- **Objetivo específico 3:** Desarrollar los módulos del sistema web de inscripción (Versión 2.0) utilizando tecnologías HTML5, CSS3, JavaScript, PHP y PostgreSQL.
- **Objetivo específico 4:** Evaluar el funcionamiento operativo y el impacto socioeducativo del sistema desarrollado, mediante pruebas funcionales y medición de la satisfacción de los usuarios.
- **Hipótesis tecnológica / Idea a defender (opcional/si el tutor lo requiere):** [DATO PENDIENTE — no formulada explícitamente en fuente; podría ser: La implementación de la plataforma V2.0 con control ACID reduce el tiempo de trámite >90% y garantiza 100% trazabilidad sin sobrecupo]

### 2.5 Justificación

- **Justificación técnica** — ¿qué tecnología o conocimiento se aplica y por qué es adecuado?: Stack abierto HTML5/CSS3 responsivo + JS validación reactiva + PHP 8.x Apache + PostgreSQL 16 ACID row-level locking; garantiza independencia licencias propietarias, bajo consumo ancho de banda (<1,5 MB/trámite, operable 3G/4G rural), control transaccional estricto, portabilidad móvil/PC
- **Justificación económica** — ¿qué ahorro, ingreso o reducción de costo genera?: Ahorro colectivo >20.000 Bs por gestión en pasajes locales (3 Bs por tramo), refrigerios, fotocopias, transporte y pernocte; costo marginal por postulante <0,50 Bs; inversión total 13.556 Bs asumida 100% recursos propios sin endeudamiento
  - **Fuente del dato económico:** Evaluación comparativa 60 postulantes/5 funcionarios, análisis impacto sostenibilidad 4.4.3; cálculo Tabla 4.5/4.6
- **Justificación social** — ¿qué beneficio humano o comunitario produce?: Erradica filas nocturnas intemperie y condiciones degradantes, restituye dignidad/tranquilidad familias, garantiza acceso transparente/equitativo educación técnica, democratiza cupos vocacionales, fomenta gobernanza digital institucional
- **Número de beneficiarios directos:** ~400 postulantes anuales + 60 muestra evaluada (y 5 funcionarios validadores) — distrito San Julián
- **Número de beneficiarios indirectos:** Familias agrícolas/comerciales distrito, unidades educativas de procedencia, comunidad municipal (ahorro transporte/papelería), futuros cohorts BTH; municipios vecinos escalables
- **¿El proyecto se vincula con algún ODS? ¿Cuál(es)?:** ODS 4 Educación Inclusiva y de Calidad y ODS 9 Industria, Innovación e Infraestructura

> **Nutre:** `capitulos/02_planteamiento_problema/main.tex` → `diagnostico.tex`, `identificacion_problema.tex`, `formulacion_problema.tex`, `objetivos.tex`, `justificacion.tex`

---

## 3. MARCO REFERENCIAL

### 3.1 Antecedentes del proyecto

1. **Antecedente 1**
   - Título: Sistema mecanizado para la inscripción de asignaturas y pagos por internet
   - Autor(es): Universidad Don Bosco
   - Año: 2018
   - Institución / País: Universidad Don Bosco — San Salvador, El Salvador
   - Resultado o aporte clave: Transición ventanilla manual → sistema web centralizado reduce >80% tiempos espera y erradica errores asignación vacantes, incrementa satisfacción y transparencia
   - Fuente: Universidad Don Bosco (2018)
2. **Antecedente 2**
   - Título: La innovación educativa y la transformación práctica de las estructuras institucionales mediante la actualización tecnológica
   - Autor(es): Sujovich, D. y Biocca, M.
   - Año: 2024
   - Institución / País: Revista Iberoamericana de Educación y Tecnología, 12(1), 14-29
   - Resultado o aporte clave: Innovación trasciende reforma curricular, exige actualización práctica estructuras servicio; frustraciones usuarios derivan de falta autoservicio intuitivo y heterogeneidad competencias — recomiendan interfaces guiadas y canales autónomos resolución accesos
   - Fuente: Sujovich y Biocca (2024)
3. **Antecedente 3**
   - Título: Fase Presencial Tradicional (2022–2024) y Fase Digital Preliminar (2025) del MTP San Julián
   - Autor(es): MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN (diagnóstico institucional propio)
   - Año: 2022-2025 (relevamiento 2026)
   - Institución / País: MTP San Julián, San Julián, Santa Cruz — Bolivia
   - Resultado o aporte clave: 2022-2024 matrícula manuscrita ventanilla → acampe días intemperie, desgaste, pérdidas laborales; 2025 web V1 sin recovery/ sin matriculación documental/ sin asignación paralelos → regreso masivo reseteos, pérdida cupos vocacionales, brecha ciclo, planillas manuales con desequilibrios/cruces horarios — fundamenta necesidad V2.0
   - Fuente: Diagnóstico institucional retrospectivo 2022-2025 + entrevistas 2026

### 3.2 Bases teóricas

- **Teoría o modelo directamente aplicado a la solución:** Arquitectura Cliente-Servidor en Entornos Web
  - **Autor y año:** Tanenbaum y Wetherall (2021)
  - **Fuente bibliográfica completa:** Tanenbaum, A. S., & Wetherall, D. J. (2021). Redes de computadoras (6.a ed.). Pearson Educación.
- **Segunda base teórica** (si aplica): Ingeniería de Software Web y Usabilidad Centrada en el Usuario — Pressman y Maxim (2020) — WebE: principios disciplinados para apps seguras/escalables/mantenibles; diseño centrado usuario, formularios limpios, feedback reactivo
  - **Fuente:** Pressman, R. S., & Maxim, B. R. (2020). Ingeniería del software: Un enfoque práctico (9.a ed.). McGraw-Hill Interamericana.
- **Tercera base teórica:** Seguridad Informática, Autenticación y Recuperación de Credenciales — Stallings (2021) confidencialidad/integridad/disponibilidad, contraseñas cifradas hash, Self-Service Password Reset con C.I. + fecha nacimiento
  - **Fuente:** Stallings, W. (2021). Fundamentos de seguridad en redes (5.a ed.). Pearson Educación.
- **Cuarta base teórica:** Sistemas de Información y Gestión Documental Escolar — ciclo integral registro académico, auditoría requisitos legales (libretas, cédulas, certificados) → registros relacionales auditables
- **Quinta base teórica:** Modelado Orientado a Objetos y Persistencia Transaccional ACID en PostgreSQL — Sommerville (2020) UML + PostgreSQL Global Development Group (2025) ACID Atomicidad/Consistencia/Aislamiento/Durabilidad, bloqueo fila
  - **Fuente:** Sommerville, I. (2020). Ingeniería de software (10.a ed.). Pearson; PostgreSQL Global Development Group (2025). PostgreSQL 16.0 Documentation. https://www.postgresql.org/docs/
- **Disciplina(s) científica(s) o técnica(s) base del proyecto:** Ciencias de la computación, Ingeniería de software, Gestión de información escolar, Redes de computadoras, Seguridad informática, Sistemas Web
- **Principio técnico o ley física/química aplicada** (si corresponde): Principio ACID y bloqueo pesimista row-level locking (FOR UPDATE) para control concurrencia cupos; diseño responsivo con media queries
  - **Fuente:** PostgreSQL Docs 2025; Marcotte (2018) Responsive Web Design

### 3.3 Marco conceptual y normativo

1. **Concepto 1:** Sistemas Web
   - Definición operativa: Aplicaciones cliente-servidor ejecutadas sobre navegadores mediante HTTP/HTTPS que procesan información centralizada para automatizar trámites y flujos de trabajo
   - Fuente: Pressman & Maxim (2020)
2. **Concepto 2:** HTML5
   - Definición operativa: Estándar de lenguaje de marcado semántico que estructura vistas, campos y elementos interactivos de formularios
   - Fuente: MDN Web Docs (2025) https://developer.mozilla.org/es/docs/Web/HTML
3. **Concepto 3:** CSS3 y Diseño Responsivo
   - Definición operativa: Especificación de diseño adaptable que utiliza media queries para ajustar disposición gráfica a cualquier resolución móvil/escritorio
   - Fuente: Marcotte (2018); W3Schools (2025) https://www.w3schools.com/css/css_rwd_intro.asp
4. **Concepto 4:** JavaScript
   - Definición operativa: Lenguaje interpretado lado cliente responsable de reactividad dinámica y validación previa datos en navegador
   - Fuente: Mozilla Foundation (2025) https://developer.mozilla.org/es/docs/Web/JavaScript
5. **Concepto 5:** PHP (Hypertext Preprocessor)
   - Definición operativa: Lenguaje backend interpretado en servidor que implementa lógica negocio, verificación requisitos y transacciones BD
   - Fuente: Arimetics (2024) https://www.arimetrics.com/glosario-digital/php
6. **Concepto 6:** PostgreSQL
   - Definición operativa: Motor relacional código abierto nivel corporativo con soporte transacciones ACID y alta concurrencia
   - Fuente: PostgreSQL Global Development Group (2025)
7. **Concepto 7:** Autoservicio de Credenciales
   - Definición operativa: Funcionalidad que permite al usuario restaurar acceso mediante comprobación segura datos personales (C.I., fecha nacimiento) sin atención manual ventanilla
   - Fuente: Teoría Self-Service Password Reset — Stallings (2021)
8. **Concepto 8:** Bachillerato Técnico Humanístico (BTH)
   - Definición operativa: Modelo formativo educación secundaria comunitaria productiva Bolivia que otorga doble titulación Bachiller Humanístico + Técnico Medio en especialidad vocacional
   - Fuente: Ley 070 (2010); RM 0912/2023
9. **Concepto 9:** Módulo Tecnológico Productivo (MTP)
   - Definición operativa: Centro nucleador dotado de talleres/equipamiento industrial que brinda formación técnica especializada a estudiantes de distintas unidades educativas del distrito municipal
   - Fuente: Diagnóstico MTP San Julián
10. **Concepto 10:** Preinscripción en Línea / Matriculación Documental Definitiva / Unidad Educativa de Procedencia / Curso y Paralelo
   - Definición operativa: Preinscripción al cierre gestión previa reserva vacante; matriculación documental al inicio gestión siguiente con libretas 1ro-3ro, cédula tutores, carnet, certificado nacimiento; Unidad procedencia = colegio humanístico origen que determina horarios; Curso/Paralelo = grado (4to) y sección (A/B) según capacidad áulica

- **Norma o ley boliviana aplicable:** Constitución Política del Estado Art.77-78 (educación función suprema, universal/productiva/gratuita) — Estado Plurinacional de Bolivia (2009); Ley N°070 Avelino Siñani-Elizardo Pérez (2010) formaliza BTH y Modelo Sociocomunitario Productivo
- **Norma técnica o estándar internacional aplicable:** ISO/IEC 25010 calidad software; W3C directrices; Responsive Web Design (Marcotte 2018); ACID PostgreSQL
- **Reglamento institucional relevante:** Resolución Ministerial RM 0912/2023 Reglamento de Graduación BTH — legitima proyectos Innovación Tecnológica para resolver necesidades instituciones/comunidades (Ministerio de Educación 2023)

> **Nutre:** `capitulos/03_marco_referencial/main.tex` → `antecedentes.tex`, `bases_teoricas.tex`, `marco_conceptual.tex`

---

## 4. DESARROLLO DE LA INNOVACIÓN

### 4.1 Diseño del producto o servicio

> Corresponde a las subsecciones: Características, Utilidad y Calidad del producto o servicio.

- **Nombre del producto/servicio innovador:** SISTEMA WEB DE INSCRIPCIÓN PARA EL MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN BTH — VERSIÓN 2.0
- **Tipo** (dispositivo físico, software, app, servicio, proceso): Software — Plataforma Web integral cliente-servidor 3 capas
- **Componentes o módulos principales:** 1) Formulario Dinámico y Preinscripción (7 carreras), 2) Control Transaccional de Vacantes (PostgreSQL ACID), 3) Autoservicio Recuperación Credenciales (Self-Service Password Reset con C.I.+fecha nacimiento), 4) Matriculación Documental Administrativa, 5) Asignación a Cursos y Paralelos por Unidad Educativa, 6) Generador Comprobantes Digitales PDF con código verificación, 7) Panel Control y Reportes Directivos
- **Dimensiones o especificaciones técnicas clave:** Tabla 4.1: Frontend HTML5/CSS3/JS ES6 responsivo; Backend PHP 8.x Apache 2.4; BD PostgreSQL 16 normalizada ACID row-level locking; Autoservicio <2 min; auditoría libretas 1ro-3ro etc.; distribución 4to A/B por colegio; PDF verificación; consumo <1,5 MB/trámite 3G/4G
- **Material(es) principal(es) de fabricación:** No aplica (software) — código abierto + hardware desarrollo (2 laptops, 2 smartphones, impresora, conectividad)
- **Funcionalidad principal** (qué hace paso a paso): Fase1 Preinscripción reserva cupo (formulario validado cierre gestión previa) → Fase2 Recuperación autónoma (<2 min) → Fase3 Emisión ficha preliminar PDF → Fase4 Matriculación documental formal (verificación libretas 1ro-3ro, cédula tutores, carnet, certificado inicio gestión siguiente) → Fase5 Asignación académica cursos/paralelos por colegio origen → listas oficiales BTH
- **Utilidad / valor agregado para los beneficiarios:** Erradica filas nocturnas intemperie, descentraliza atención, democratiza cupos vocacionales, transparencia BTH, trazabilidad 100%, 0 cruces horarios, ahorro >20.000 Bs y 1500 hojas, disponibilidad 24h
- **¿Qué lo diferencia de soluciones existentes?:** Respecto a V1 2025 incompleta: añade recovery autónomo, matriculación documental auditada, paralelos automatizados, control ACID atómico, comprobantes verificación, reportes tiempo real — integralidad ciclo completo vs captura parcial
- **Estándar de calidad que cumple o busca cumplir:** ISO/IEC 25010 (usabilidad, fiabilidad/seguridad, eficiencia), W3C, ACID PostgreSQL
- **Criterios de control de calidad aplicados:** Alta usabilidad navegación intuitiva heterogénea, fiabilidad contraseñas cifradas + ACID, eficiencia <1,5 MB datos móviles, pruebas concurrencia >100 pet/min <1,2s latencia, validaciones JS tasa error <5%
- **Diagrama, esquema técnico o plano del diseño (APA 7):** Arquitectura modular 3 capas + Flujo operativo 5 fases + Tabla 4.1 Especificaciones técnicas
  - **Archivo de imagen sugerido en `imagenes/`:** [DATO PENDIENTE — no hay PNG exportado en rtf; diagrama puede generarse con pgfgantt o tabularx para Gantt Figura 4.1]
  - **Nota explicativa / Fuente (macro `\notafigura`):** Elaboración propia con base en el diseño modular — Especificaciones verificadas en entorno operativo BTH San Julián

### 4.2 Planificación y cronograma

- Desarrollo 10 fases secuenciales iterativas Feb–Nov Gestión 2026 (Feb S3-4 a Nov). Detalle Tabla 4.2 y Figura 4.1 Gantt 4 fases método científico:

1. **Fase 1:** Aplicar encuestas diagnósticas a estudiantes — Fecha inicio: Febrero (Sem. 3-4) — Fecha fin: Febrero (Sem. 3-4) — Responsable: Heidy Quiroga Colque (Frontend/encuestas)
2. **Fase 2:** Recopilar y tabular la información obtenida — Marzo (Sem. 1-2) — Heidy Quiroga Colque
3. **Fase 3:** Analizar dificultades y necesidades detectadas — Marzo (Sem. 3-4) — Equipo
4. **Fase 4:** Revisar requerimientos y modelado de arquitectura UML — Abril (Sem. 1-2) — Tutor + equipo
5. **Fase 5:** Diseñar propuesta de optimización e interfaz (UI/UX) — Abril (Sem. 3-4) – Mayo (Sem. 1-2) — Heidy (UX/UI)
6. **Fase 6:** Desarrollar frontend y autoservicio de credenciales — Mayo (Sem. 3-4) – Junio (Sem. 1-2) — Heidy
7. **Fase 7:** Desarrollar módulos de matrícula documental y paralelos — Junio (Sem. 3-4) – Julio (Sem. 1-2) — Sharon Liz Quino (Backend/PostgreSQL)
8. **Fase 8:** Realizar pruebas de funcionamiento, concurrencia y estrés — Julio (Sem. 3-4) – Agosto (Sem. 1-2) — Sharon + Tutor
9. **Fase 9:** Corregir errores y depuración técnica — Agosto (Sem. 3-4) – Septiembre (Sem. 1-2) — Equipo
10. **Fase 10:** Evaluar resultados finales y redacción del informe — Septiembre (Sem. 3-4) – Noviembre — Equipo + Tutor

- **Diagrama Gantt:** Figura 4.1 abarca Fase I Diagnóstico Empírico (1-3), Fase II Diseño Arquitectura (4-5), Fase III Desarrollo Software 2.0 (6-7), Fase IV Validación y Cierre (8-10) — Feb-Nov 2026

### 4.3 Recursos

#### Recursos humanos

1. **Persona 1:** Heidy Quiroga Colque — Postulante BTH / Desarrolladora Frontend
   - Función: Análisis requerimientos UX/UI, maquetación adaptable HTML5/CSS3, validaciones cliente, encuestas diagnósticas
   - Dedicación: 15 h/sem
2. **Persona 2:** Sharon Liz Quino — Postulante BTH / Desarrolladora Backend
   - Función: Programación backend PHP, diseño/optimización BD relacional PostgreSQL, control transaccional, pruebas carga
   - Dedicación: 15 h/sem
3. **Persona 3:** Ing. Juan Vladimir Ramirez Flores — Tutor Guía de Especialidad
   - Función: Asesoramiento metodológico, supervisión arquitectura software, validación BD y control calidad
   - Dedicación: 4 h/sem

- **Carga total:** 34 h/sem

#### Recursos materiales

1. **Material 1:** Computadoras portátiles para desarrollo, codificación y pruebas en entorno local
   - Cantidad: 2 unidades
   - Costo unitario (Bs): 4300
   - Proveedor / Origen: Aporte propio de las autoras
2. **Material 2:** Teléfonos inteligentes smartphone para verificación adaptabilidad responsive
   - Cantidad: 2 unidades
   - Costo unitario (Bs): 1200
   - Proveedor / Origen: Aporte propio de las autoras
3. **Material 3:** Servicio de internet banda ancha para investigación, repositorios y despliegue
   - Cantidad: 2 mensualidades
   - Costo unitario (Bs): 140
   - Proveedor / Origen: Proveedor local en San Julián
4. **Material 4:** Impresora multifuncional para formularios, instrumentos diagnósticos y reportes
   - Cantidad: 1 unidad
   - Costo unitario (Bs): 2100
   - Proveedor / Origen: Aporte propio / Comercio local
5. **Material 5:** Software y plataformas — Entorno servidor Apache 2.4, PostgreSQL 16, VS Code, Git, navegadores web — Licencias abiertas Open Source sin costo
   - Cantidad: — 
   - Costo unitario (Bs): 0
   - Proveedor / Origen: Descarga libre
6. **Material 6:** Material escritorio — Cuadernos campo, archivadores, bolígrafos y papel bond (100 hojas) — Cuaderno 18 Bs x2, Lapiceros 1 Bs x5, Transporte 3 Bs x9, Archivador 4 Bs x2, Hojas 1 Bs x100
   - Cantidad: 1 lote
   - Costo unitario (Bs): ver desglose
   - Proveedor / Origen: Librería local San Julián

#### Recursos financieros

- **Presupuesto total estimado (Bs):** 13556
- **Fuente de financiamiento principal:** Recursos propios — aportes directos de las estudiantes autoras (Heidy Quiroga Colque y Sharon Liz Quino)
- **Monto financiado externamente (Bs):** 0 (0,0%)
- **Monto financiado con recursos propios (Bs):** 13556 (100,0%) — Subvención institucional MTP 0; crédito bancario 0

### 4.4 Cálculo de costos

#### Costo de inversión (activos fijos, montaje)

1. **Ítem 1:** Computadora portátil de desarrollo
   - Cantidad: 2
   - Costo unitario (Bs): 4300
   - Costo total (Bs): 8600
2. **Ítem 2:** Teléfono celular para pruebas móviles
   - Cantidad: 2
   - Costo unitario (Bs): 1200
   - Costo total (Bs): 2400
3. **Ítem 3:** Servicio internet (2 mensualidades)
   - Cantidad: 2
   - Costo unitario (Bs): 140
   - Costo total (Bs): 280
4. **Ítem 4:** Cuaderno apuntes
   - Cantidad: 2
   - Costo unitario (Bs): 18
   - Costo total (Bs): 36
5. **Ítem 5:** Lapiceros
   - Cantidad: 5
   - Costo unitario (Bs): 1
   - Costo total (Bs): 5
6. **Ítem 6:** Transporte local visitas técnicas
   - Cantidad: 9
   - Costo unitario (Bs): 3
   - Costo total (Bs): 27
7. **Ítem 7:** Archivador documentos
   - Cantidad: 2
   - Costo unitario (Bs): 4
   - Costo total (Bs): 8
8. **Ítem 8:** Hojas papel bond
   - Cantidad: 100
   - Costo unitario (Bs): 1
   - Costo total (Bs): 100
9. **Ítem 9:** Impresora multifuncional
   - Cantidad: 1
   - Costo unitario (Bs): 2100
   - Costo total (Bs): 2100
- **Total inversión (Bs):** 13556

#### Costo de operación mensual (fijos)

1. **Ítem 1:** Servicio internet banda ancha — Costo mensual (Bs): 140
2. **Ítem 2:** Fondo mantenimiento hardware — Costo mensual (Bs): 50
- **Total fijos/mes (Bs):** 190

#### Costos variables (por unidad producida o ciclo)

1. **Ítem 1:** Transporte local y papelería respaldo administrativo por ciclo inscripción — Costo por ciclo (Bs): 100
2. **Ítem 2:** No aplica (software sin insumos por unidad)
   - Costo por unidad/ciclo (Bs): 0
- **Total variable/unidad (Bs):** 100 por ciclo

#### Indicadores financieros

- **Precio de venta o valor del servicio por unidad (Bs):** No aplica — innovación software público sin fines comerciales MTP San Julián (rentabilidad medida en retorno social/eficiencia institucional)
- **Punto de equilibrio estimado** (unidades o meses): No aplica comercial; equilibrio en ahorro social >20.000 Bs/año vs 13.556 inversión → recuperación en <1 gestión
- **Retorno de inversión estimado** (meses): Costo marginal por postulante <0,50 Bs; sostenibilidad plena con ahorro colectivo >20.000 Bs/año

> **Nutre:** `capitulos/04_desarrollo_innovacion/main.tex` → `diseno.tex`, `planificacion.tex`, `recursos.tex`, `calculo_costos.tex`; tablas referenciadas: `tablas/cronograma_ejemplo.tex`, `tablas/costos_ejemplo.tex`, `tablas/especificaciones_tecnicas_ejemplo.tex`

---

## 5. METODOLOGÍA

### 5.1 Tipo de investigación

- **Enfoque de investigación:** Mixto (cualitativo y cuantitativo) — integra percepciones usabilidad/accesibilidad/satisfacción + medición numérica tiempos respuesta, latencia, consistencia transaccional cupos
- **Tipo de investigación:** Aplicada y tecnológica (solución práctica problemática institucional MTP San Julián mediante ingeniería software web)
- **Alcance:** No especificado explícitamente, pero implícito descriptivo-propositivo y evaluativo (diagnóstico → diseño → desarrollo → evaluación)
- **Diseño metodológico:** No experimental, transversal y propositivo, articulado en 4 fases canónicas método científico: Fase1 Diagnóstico empírico, Fase2 Diseño/modelado UML, Fase3 Desarrollo técnico V2.0, Fase4 Evaluación/validación pruebas caja negra
- **Variable Independiente (VI — solución técnica o prototipo):** Sistema Web de Inscripción MTP San Julián BTH — Versión 2.0 (arquitectura HTML5 CSS3 JS PHP 8.x PostgreSQL 16 ACID)
- **Variable(s) Dependiente(s) (VD — efectos medibles y de impacto):** 1) Tiempo gestión trámite (días→minutos), 2) Tasa recuperación autónoma credenciales (<2 min), 3) % expedientes documentales trazables (100%), 4) Consistencia cupos sin sobrecupo (100% ACID), 5) Satisfacción usabilidad móvil (92%), 6) Errores registro (<5%), 7) Ahorro económico familiar (>20.000 Bs)
- **Indicadores y unidades de medida principales:** Minutos/registro (3-5 min), % satisfacción (92%), % errores (35%→<5%), horas disponibilidad (8h→24h, +200%), Bs ahorro (20.000/año), segundos latencia (<1,2s), peticiones/min (>100), % trazabilidad (100%)
- **Justificación breve del tipo elegido:** Integra percepciones cualitativas y métricas objetivas operativas; aplicada porque no busca teoría abstracta sino solución sistemática práctica BTH con metodologías ingeniería web
- **Autor de referencia metodológica:** Hernández Sampieri, Fernández Collado & Baptista Lucio (2014) — «la recolección de datos ocurre en los ambientes naturales y cotidianos de los participantes» (p.397)

### 5.2 Población y muestra

- **Población total del estudio:** ~400 postulantes anuales distrito municipal San Julián que aspiran a BTH en 7 especialidades (Construcción Civil, Contaduría Pública, Electrónica, Gastronomía, Mecánica Automotriz, Sistemas Informáticos, Textiles y Confecciones) + plantel docente/directivo/secretaría académica custodia documental y paralelos
  - **Fuente del dato poblacional:** Registro institucional MTP San Julián — estimación demanda anual 400 postulantes
- **Unidades de prueba experimental o técnica** (si aplica): No hay lotes producción; pruebas software: >100 peticiones concurrentes/min, auditoría transaccional cupos 7 carreras
- **Tipo de muestreo:** No probabilístico por conveniencia intencional (accesibilidad participantes periodos prueba)
- **Tamaño de la muestra:** 60 estudiantes postulantes + 5 funcionarios institucionales (Director, secretaría académica, docentes especialidad) — total 65
- **Fórmula o criterio utilizado para determinar la muestra:** Criterio representatividad entre distintas unidades educativas procedencia y opciones vocacionales — conveniencia intencional (no fórmula probabilística)

### 5.3 Técnicas e instrumentos de recolección de datos

1. **Técnica 1:** Encuesta estructurada a postulantes
   - Instrumento: Cuestionario escala Likert 5 puntos (1 Totalmente en desacuerdo a 5 Totalmente de acuerdo) — dimensiones: facilidad navegación, claridad formularios, autonomía recuperación contraseñas, confianza reserva transparente vacantes
   - Objetivo: Medir satisfacción usabilidad y autonomía sistema
   - Aplicada a: 60 estudiantes postulantes muestra
   - Validación o prueba previa del instrumento: No especificada validación externa; Likert estándar
   - Cantidad de aplicaciones: 1 (post-uso V2.0) — 60 cuestionarios
2. **Técnica 2:** Entrevista semiestructurada al personal administrativo
   - Instrumento: Guía preguntas abiertas dirigida a secretaría/dirección
   - Objetivo: Indagar sobrecarga laboral reseteos manuales 2025, recepción archivo libretas 1ro-3ro, cédula tutores, carnet, certificado, dificultades cruces horarios al conformar paralelos por colegio origen
   - Aplicada a: 5 funcionarios (Director, secretaría, docentes especialidad)
   - Cantidad de aplicaciones: 5 entrevistas
3. **Técnica 3:** Pruebas técnicas y benchmarking de software (Medición técnica / Ensayo de campo)
   - Instrumento: Pruebas caja negra flujos validación identidad autoservicio contraseñas; pruebas integridad referencial PostgreSQL registro documentos; análisis auditoría transaccional logs Apache y motor relacional; Apache Benchmark para pruebas estrés
   - Precisión / Tolerancia / Calibración del instrumento: Control ACID PostgreSQL 16 + row-level locking FOR UPDATE; latencia <1,2s; >100 peticiones/min sin caídas
   - Objetivo: Verificar flujos validación, integridad referencial, consistencia cupos, estabilidad concurrente
   - Aplicada a: Sistema web V2.0 en entorno producción/pruebas
   - Cantidad de aplicaciones / repeticiones: Pruebas concurrencia masiva (7 carreras), auditoría logs continua
4. **Técnica 4:** [DATO PENDIENTE — no hay cuarta técnica distinta en fuente; podría incluir observación directa, pero fuente sólo menciona 3 técnicas principales]

### 5.4 Procedimiento de análisis de datos

- **Software o herramienta de análisis utilizado:** Tabulación computarizada (Excel implícito) + PostgreSQL + Apache logs — no se menciona SPSS/Python, sólo tabulación y auditoría logs
- **Tipo de análisis aplicado:** Estadística descriptiva (frecuencias absolutas y relativas) + Análisis comparativo métricas eficiencia Antes vs Después + Auditoría de Logs e Integridad Transaccional
- **Prueba estadística** (si aplica): No aplica prueba inferencial (no t de Student); sólo descriptiva y comparativa operativa; verificación consistencia registros PostgreSQL

> **Nutre:** `capitulos/05_metodologia/main.tex` → `tipo_investigacion.tex`, `poblacion_muestra.tex`, `tecnicas_instrumentos.tex`, `analisis_datos.tex`

---

## 6. ESTRATEGIA DE MEJORA Y PROYECCIÓN

### 6.1 Plan de mejora continua

- **Mejora a corto plazo (0-6 meses):** Fortalecer autoservicio credenciales con alertas confirmación a dispositivos contacto, optimizar CSS/JS para móviles gama baja, incorporar tutorial interactivo paso a paso y FAQ para colegios rurales → resolución autónoma <2 min 100% casos
- **Mejora a mediano plazo (6-18 meses):** Módulo pre-auditoría documental con carga digital preliminar (fotos/digitalizaciones libretas 1ro-3ro, cédula tutores, carnet, certificado) agilizando contrastación física secretaría + emisión credenciales estudiantiles digitales QR para control acceso/asistencia talleres 7 carreras
- **Mejora a largo plazo (18+ meses):** Expandir a Sistema Integral Gestión Académica BTH San Julián integrando control asistencia diaria por especialidad, registro centralizado calificaciones modulares y seguimiento proyectos grado según RM 0912/2023
- **Indicador que medirá la mejora:** Corto: Tiempo resolución credenciales → Meta <2 min 100%; Mediano: Expedientes validados y carnetizados en 7 carreras → Meta 100% matriculados; Largo: Módulos académicos articulados plataforma única → Meta cobertura institucional plena

### 6.2 Proyección y escalamiento

- **¿A qué otros lugares o poblaciones podría expandirse?:** Otros Módulos Tecnológicos Productivos y unidades educativas técnico-humanísticas departamento Santa Cruz: Cuatro Cañadas, San Ramón, San Javier, Guarayos (comparten estructura sociocomunitaria y desafíos matrícula)
- **Alianzas estratégicas identificadas** (instituciones, empresas, ONGs): Convenio interinstitucional MTP San Julián + Dirección Distrital Educación San Julián + Gobierno Autónomo Municipal San Julián (sincronización calendarios, conectividad permanente, validación cruzada colegios origen)
- **Nuevas funcionalidades técnicas previstas para versiones futuras:** Notificaciones por WhatsApp, gestión académica integral (asistencia, notas, proyectos grado), pre-auditoría documental QR, alertas credenciales
- **¿El proyecto tiene potencial de comercialización?** (Sí/No + argumento breve): No — software público sin fines comerciales para MTP San Julián; rentabilidad social/eficiencia institucional; transferible sin costo por ser código abierto sin licencias propietarias/pago recurrente, con potencial réplica geográfica gratuita
- **Mercado objetivo estimado** (tamaño, ubicación): ~400 postulantes/año MTP San Julián + postulantes municipios vecinos Santa Cruz (cientos por distrito) — nicho BTH departamental

> **Nutre:** `capitulos/06_estrategia_mejora/main.tex` → `plan_mejora.tex`, `proyeccion_escalamiento.tex`; tablas referenciadas: `tablas/plan_mejora_ejemplo.tex`

---

## 7. RESULTADOS

### 7.1 Resultados obtenidos

1. **Resultado 1:** Alto índice Usabilidad Móvil
   - Dato cuantitativo o cualitativo: 92% calificó interfaz intuitiva/clara/fácil navegar desde celulares
   - Método de medición: Encuesta Likert 5 puntos a 60 estudiantes muestra evaluada
   - Fuente / Evidencia: Cuestionario satisfacción usabilidad — validación diseño responsivo
2. **Resultado 2:** Reducción 88% Errores Registro
   - Dato cuantitativo o cualitativo: 35% datos inconsistentes → <5% tasa error BD (-88%) mediante validaciones dinámicas JS cédulas, fechas nacimiento, teléfonos
   - Método de medición: Validaciones JS cliente + auditoría BD
   - Fuente / Evidencia: Pruebas técnicas registro + BD PostgreSQL
3. **Resultado 3:** Estabilidad ante Cargas Concurrentes
   - Dato cuantitativo o cualitativo: >100 peticiones concurrentes/min sin caídas, latencia promedio <1,2s
   - Método de medición: Pruebas estrés Apache Benchmark
   - Fuente / Evidencia: Logs Apache + PostgreSQL
4. **Resultado 4:** Consistencia Absoluta Cupos
   - Dato cuantitativo o cualitativo: 0 sobreasignaciones/colisiones durante matriculación masiva — 100% consistencia saldo vacantes 7 especialidades
   - Método de medición: Auditoría transaccional ACID row-level locking PostgreSQL 16
   - Fuente / Evidencia: Logs auditoría credenciales + tabla especialidad (cupos_disponibles CHECK >=0)

### 7.2 Beneficios e impacto

- **Social:** Erradicación definitiva filas nocturnas y condiciones degradantes espera intemperie, tranquilidad hogares San Julián, trato digno/igualitario jóvenes
  - Dato de respaldo: -100% aglomeración física familias (pernoctes suprimidos)
  - Fuente: Comparación Tabla 7.1 evaluación 60/5
- **Tecnológico:** Precedente modernización BTH región, dotación herramienta propia desarrollada por estudiantes Sistemas Informáticos MTP San Julián, digitalización trámite
  - Dato de respaldo: Sistema integral 7 módulos operativos, ACID, PDF verificación
  - Fuente: Panel control directivos + pruebas sistema
- **Económico:** Ahorro colectivo directo >20.000 Bs por período inscripción al suprimir pasajes transporte público (3 Bs/tramo) y fotocopias innecesarias; costo marginal <0,50 Bs/postulante
  - Dato de respaldo: >20.000 Bs/año familias + 190 Bs fijos/mes vs 13.556 inversión
  - Fuente: Análisis impacto sostenibilidad 4.4.3
- **Ambiental:** Digitalización trámite y comprobantes digitales → ahorro >1500 hojas papel bond físico y cartuchos tóner por ciclo escolar
  - Dato de respaldo: 1500 hojas/ciclo
  - Fuente: Cálculo impacto ambiental resultados 7.2

### 7.3 Comparación antes vs. después

1. **Indicador 1:** Recuperación de credenciales
   - Antes de la innovación: Fila presencial en secretaría (pérdida cupo vocacional, horas/días espera)
   - Después de la innovación: Autoservicio digital <2 min autónomo (C.I. y fecha nacimiento)
   - Variación (%): Erradicación filas presenciales (-100%)
2. **Indicador 2:** Matriculación documental
   - Antes de la innovación: Archivo manual físico sin registro sistematizado (descontrol carpetas)
   - Después de la innovación: Auditoría digital en BD de libretas y certificados (100% trazabilidad)
   - Variación (%): 100% trazabilidad
3. **Indicador 3:** Asignación a cursos y paralelos
   - Antes de la innovación: Planillas empíricas con cruces horario distrital
   - Después de la innovación: Distribución automática por colegio procedencia
   - Variación (%): 0 cruces
4. **Indicador 4:** Control de vacantes por taller
   - Antes de la innovación: Manual / Riesgo sobrecupo
   - Después de la innovación: Asignación atómica ACID con bloqueo fila PostgreSQL
   - Variación (%): 100% seguro
5. **Indicador 5:** Errores en formulario registro
   - Antes de la innovación: 35% datos inconsistentes
   - Después de la innovación: Validaciones reactivas JS en cliente (<5%)
   - Variación (%): -88%
6. **Indicador 6:** Tiempo total del trámite
   - Antes de la innovación: 1 a 3 días en fila física
   - Después de la innovación: 3 a 5 minutos en plataforma web
   - Variación (%): -90%
7. **Indicador 7:** Disponibilidad de atención
   - Antes de la innovación: 8 horas/día ventanilla
   - Después de la innovación: 24 horas continuas en línea
   - Variación (%): +200%
8. **Indicador 8:** Aglomeración física de familias
   - Antes de la innovación: Pernoctes y filas intemperie
   - Después de la innovación: Supresión total filas presenciales
   - Variación (%): -100%

> **Nutre:** `capitulos/07_resultados/main.tex` → `resultados_obtenidos.tex`, `beneficios_impacto.tex`, `comparacion_antes_despues.tex`; tablas referenciadas: `tablas/comparacion_antes_despues_ejemplo.tex`


---

## 8. PROYECTO DE VIDA

- **Carrera o profesión que el autor aspira seguir:** Licenciatura en Ingeniería de Sistemas o Ingeniería Informática (Técnico Medio en Sistemas Informáticos como base)
- **Universidad o institución donde planea continuar estudios:** Universidad Autónoma Gabriel René Moreno (UAGRM) o universidades sistema público/privado departamento Santa Cruz
- **¿Cómo se vincula este proyecto con sus metas profesionales?:** Experiencia práctica concepción/programación solución web real proporciona base cognitiva sólida para asignaturas algoritmos, cálculo, estructuras datos, metodologías ágiles, acortando brecha secundario técnico → superior
- **Competencias técnicas adquiridas durante el proyecto:** Dominio HTML5/CSS3 responsivo, JS validación reactiva, PHP backend estructurado, modelado relacional y administración transaccional PostgreSQL 16, manejo control versiones Git y entornos servidor local Apache 2.4, VS Code
- **Competencias blandas desarrolladas:** Trabajo colaborativo en equipo complementando roles diseño visual/lógica datos, resiliencia/tenacidad depuración errores software y fallas concurrencia, comunicación asertiva con docentes/directivos/postulantes durante levantamiento empírico
- **¿Planea emprender con este proyecto después del grado?** (Sí/No + detalle): Sí — contempla posibilidad futura emprendimiento juvenil servicios informáticos y consultoría software para modernización tecnológica norte integrado cruceño; plataforma transferible sin costo
- **Compromiso con la comunidad — acción concreta futura:** Talleres voluntarios gratuitos alfabetización digital y uso herramientas web para nuevas promociones secundaria módulo
- **Meta personal a 5 años relacionada con el proyecto:** Consolidar vocación tecnológica, ingresar/ avanzar Ingeniería Sistemas/Informática UAGRM, expandir a Sistema Integral Gestión Académica BTH, emprender servicios informáticos regionales

> **Nutre:** `capitulos/08_proyecto_vida/main.tex`

---

## 9. CONCLUSIONES Y RECOMENDACIONES

> Los datos de esta sección se derivan de las secciones anteriores. Complete después de tener los resultados.

### 9.1 Insumos para conclusiones

- **¿Se cumplió el objetivo general?** (Sí/Parcialmente/No + evidencia): Sí — Se desarrolló e implementó con éxito SISTEMA V2.0 arquitectura desacoplada HTML5 CSS3 JS PHP 8.x PostgreSQL 16, redujo tiempo registro de varios días fila a 3-5 min/postulante, 100% integral
- **¿Se cumplió el objetivo específico 1?:** Sí — Diagnóstico 2022-2025 + relevamiento 60/5 primer bimestre 2026 identificó 3 vacíos críticos (recovery, documental, paralelos)
- **¿Se cumplió el objetivo específico 2?:** Sí — Diseño arquitectura 3 capas, modelos BD relacionales normalizados, interfaces centradas usuario (UML, UI/UX)
- **¿Se cumplió el objetivo específico 3?:** Sí — Desarrollo 7 módulos V2.0 con stack abierto (Tabla 4.1) y control ACID
- **¿Se cumplió el objetivo específico 4?:** Sí — Evaluación pruebas funcionales/caja negra, estrés Apache Benchmark >100 pet/min, satisfacción 92%, consistencia 100%
- **Hallazgo más importante del proyecto** (una frase factual): Validación ACID PostgreSQL 16 con FOR UPDATE garantiza 0 sobrecupos y <1,2s latencia sosteniendo 100% vacantes 7 carreras, mientras autoservicio <2 min erradica filas vocacionales
- **¿La viabilidad financiera se confirmó?** (Sí/No + dato): Sí — Inversión 13.556 Bs 100% recursos propios vs ahorro >20.000 Bs/año familias + costo marginal <0,50 Bs/postulante + 1500 hojas ahorro; sostenibilidad <1 gestión
- **Principal limitación encontrada durante la ejecución:** Dependencia conectividad rural intermitente (<1,5 MB/trámite optimizado) y necesidad alfabetización digital heterogénea postulantes rurales (mitigado con tutorial FAQ)

### 9.2 Insumos para recomendaciones

- **¿Qué debería monitorearse post-implementación?** (indicador + frecuencia): Tiempo resolución credenciales (<2 min) + % trazabilidad documental (100%) + latencia concurrencia (<1,2s) + saldo cupos ACID diario durante semanas matrícula activa; monitoreo continuo logs
- **¿A qué nueva población o contexto se recomienda ampliar las pruebas?:** Municipios vecinos Santa Cruz (Cuatro Cañadas, San Ramón, San Javier, Guarayos) y otras unidades educativas técnico-humanísticas BTH departamentales con matrícula compartida
- **¿Qué fases de la estrategia de mejora se recomienda priorizar?:** Corto plazo (0-6m) tutorial/FAQ y alertas recovery + Mediano (6-18m) pre-auditoría documental QR (100% carnetización)
- **Recomendación técnica para futuros proyectos similares:** Implementar OPcache PHP + índices especializados PostgreSQL (C.I., código especialidad) + rutinas pg_dump diarias cifradas local+externo + actualizaciones seguridad PHP/BD anti-SQLi/DoS + validaciones JS cliente robustas
- **Recomendación institucional** (qué debería hacer la unidad educativa o municipio): Dirección MTP coordinar con unidades origen difusión guías gráficas/videos instructivos pre-apertura cupos; Gobierno Autónomo Municipal San Julián proveer línea internet dedicada fibra óptica servidor alta demanda; fomentar continuidad por futuros estudiantes Sistemas Informáticos (notificaciones WhatsApp, gestión académica integral) vía convenio MTP-Distrital-Municipal

> **Nutre:** `capitulos/09_conclusiones_recomendaciones/main.tex` → `conclusiones.tex`, `recomendaciones.tex`

---

## 10. Bibliografía (fuentes a incluir en `bibliografia/referencias.bib`)

1. **Referencia 1**
   - Tipo: Libro — Metodología
   - Referencia completa: Hernández Sampieri, R., Fernández Collado, C., & Baptista Lucio, P. (2014). Metodología de la investigación (6.a ed.). McGraw-Hill. pp.88-101, p.397 — Definición alcance investigación + recolección datos ambientes naturales
   - Ya incluida en .bib: ☑ `hernandez2014`
2. **Referencia 2**
   - Tipo: Artículo revista
   - Referencia completa: Sujovich, D., & Biocca, M. (2024). La innovación educativa y la transformación práctica de las estructuras institucionales mediante la actualización tecnológica. Revista Iberoamericana de Educación y Tecnología, 12(1), 14-29.
   - Ya incluida en .bib: ☑ `sujovich2024`
3. **Referencia 3**
   - Tipo: Informe técnico
   - Referencia completa: Universidad Don Bosco. (2018). Sistema mecanizado para la inscripción de asignaturas y pagos por internet. San Salvador, El Salvador.
   - Ya incluida en .bib: ☑ `udb2018`
4. **Referencia 4**
   - Tipo: Libro — Ingeniería Software
   - Referencia completa: Pressman, R. S., & Maxim, B. R. (2020). Ingeniería del software: Un enfoque práctico (9.a ed.). McGraw-Hill Interamericana.
   - Ya incluida en .bib: ☑ `pressman2020`
5. **Referencia 5**
   - Tipo: Libro — Redes
   - Referencia completa: Tanenbaum, A. S., & Wetherall, D. J. (2021). Redes de computadoras (6.a ed.). Pearson Educación.
   - Ya incluida en .bib: ☑ `tanenbaum2021`
6. **Referencia 6**
   - Tipo: Libro — Seguridad
   - Referencia completa: Stallings, W. (2021). Fundamentos de seguridad en redes: Aplicaciones y estándares (5.a ed.). Pearson Educación.
   - Ya incluida en .bib: ☑ `stallings2021`
7. **Referencia 7**
   - Tipo: Libro — Software
   - Referencia completa: Sommerville, I. (2020). Ingeniería de software (10.a ed.). Pearson Educación.
   - Ya incluida en .bib: ☑ `sommerville2020`
8. **Referencia 8**
   - Tipo: Libro — Diseño responsivo
   - Referencia completa: Marcotte, E. (2018). Responsive Web Design (2.a ed.). A Book Apart.
   - Ya incluida en .bib: ☑ `marcotte2018`
9. **Referencia 9**
   - Tipo: Online — Documentación
   - Referencia completa: MDN Web Docs. (2025). HTML: Lenguaje de marcado de hipertexto. https://developer.mozilla.org/es/docs/Web/HTML (consultado 10 feb 2026)
   - Ya incluida en .bib: ☑ `mdn2025`
10. **Referencia 10**
   - Tipo: Online — JS
   - Referencia completa: Mozilla Foundation. (2025). Guía de JavaScript: Dinamismo y validaciones web. https://developer.mozilla.org/es/docs/Web/JavaScript (consultado 10 feb 2026)
   - Ya incluida en .bib: ☑ `mozilla2025`
11. **Referencia 11**
   - Tipo: Online — PHP
   - Referencia completa: Arimetics. (2024). Qué es PHP y para qué sirve en el desarrollo web. https://www.arimetrics.com/glosario-digital/php (consultado 15 feb 2026)
   - Ya incluida en .bib: ☑ `arimetics2024`
12. **Referencia 12**
   - Tipo: Online — BD
   - Referencia completa: PostgreSQL Global Development Group. (2025). PostgreSQL 16.0 Documentation. https://www.postgresql.org/docs/ (consultado 12 feb 2026)
   - Ya incluida en .bib: ☑ `postgresql2025`
13. **Referencia 13**
   - Tipo: Online — CSS
   - Referencia completa: W3Schools. (2025). CSS Responsive Web Design Tutorial. https://www.w3schools.com/css/css_rwd_intro.asp (consultado 12 feb 2026)
   - Ya incluida en .bib: ☑ `w3schools2025`
14. **Referencia 14**
   - Tipo: Norma legal
   - Referencia completa: Estado Plurinacional de Bolivia. (2009). Constitución Política del Estado. Art.77-78.
   - Ya incluida en .bib: ☑ `cpe2009`
15. **Referencia 15**
   - Tipo: Ley
   - Referencia completa: Estado Plurinacional de Bolivia. (2010). Ley de la Educación N°070 “Avelino Siñani - Elizardo Pérez”.
   - Ya incluida en .bib: ☑ `ley070_2010`
16. **Referencia 16**
   - Tipo: Reglamento
   - Referencia completa: Ministerio de Educación del Estado Plurinacional de Bolivia. (2023). Resolución Ministerial RM 0912/2023: Reglamento de Graduación del Bachillerato Técnico Humanístico (BTH).
   - Ya incluida en .bib: ☑ `ministerioeducacion2023`

> **Nutre:** `bibliografia/referencias.bib`

---

## 11. Anexos (material de soporte)

1. **Anexo 1:** Instrumento Recolección Datos (Cuestionario Diagnóstico Likert 5 puntos)
   - Tipo: Documento / Cuestionario
   - ¿Ya disponible?: ☑ Anexo A — 8 ítems en 4 dimensiones (Usabilidad móvil 2, Autoservicio 2, Matriculación/Transparencia 2, Organización paralelos 2) aplicado a 60 postulantes
2. **Anexo 2:** Esquema Relacional Base de Datos (PostgreSQL 16)
   - Tipo: Plano / Esquema BD
   - ¿Ya disponible?: ☑ Anexo B — 5 tablas: especialidad (CHECK cupos_disponibles>=0), postulante (UNIQUE ci), matricula_documental, asignacion_paralelo, auditoria_credenciales
3. **Anexo 3:** Código Fuente Sistema (Módulo Transaccional)
   - Tipo: Código / PHP
   - ¿Ya disponible?: ☑ Anexo C + `codigo/reserva_cupo_transaccional.php` — función reservarCupoVocacional con FOR UPDATE, beginTransaction, control duplicidad ci, UPDATE atómico commit/rollback, 100% ACID
4. **Anexo 4:** Diagrama Gantt Planificación (Figura 4.1)
   - Tipo: Figura
   - ¿Ya disponible?: ☑ Tablas cronograma + Gantt tabularx Feb-Nov 2026 (10 fases 4 fases método científico) — pendiente exportar PNG a `imagenes/` si se requiere

> **Nutre:** `anexos/index.tex` → `anexo_a_canvas.tex`, `anexo_b_fichas_tecnicas.tex`, `anexo_c_codigo_fuente.tex`
