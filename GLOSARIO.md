# 📖 Glosario — Proyecto de Grado BTH Innovación Tecnológica

> **Proyecto:** SISTEMA WEB DE INSCRIPCIÓN PARA EL MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN BTH --- VERSIÓN 2.0 | **Especialidad:** SISTEMAS INFORMÁTICOS | **Institución:** MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN

| Término | Definición Técnica / Contextual | Forma Correcta de Escribirlo | Uso en el Documento |
|---|---|---|---|
| **Bachillerato Técnico Humanístico (BTH)** | Modelo formativo de secundaria comunitaria productiva en Bolivia que otorga doble titulación: Bachiller Humanístico + Técnico Medio en especialidad vocacional (Ley 070, RM 0912/2023). | `Bachillerato Técnico Humanístico (BTH)` primera vez; luego `BTH` | Cap.1 contexto, Cap.3 marco conceptual, preliminares |
| **Resolución Ministerial RM 0912/2023** | Reglamento oficial de graduación BTH que legitima la modalidad Innovación Tecnológica para resolver necesidades institucionales. | `Resolución Ministerial RM 0912/2023` o `RM 0912/2023` | Citas `\parencite{ministerioeducacion2023}`, marco normativo `capitulos/03_marco_referencial/marco_conceptual.tex` |
| **Innovación Tecnológica** | Modalidad de graduación BTH que exige prototipo funcional con I+D aplicada (diagnóstico→diseño→validación→contraste). | `Innovación Tecnológica` (mayúsculas iniciales) | `AGENTS.md`, `estilos/configuracion.tex` `\modalidad` |
| **Módulo Tecnológico Productivo (MTP)** | Centro nucleador con talleres especializados que centraliza formación BTH para múltiples unidades educativas del distrito. | `MÓDULO TECNOLÓGICO PRODUCTIVO SAN JULIÁN` (mayúsculas institucional) | `estilos/configuracion.tex` `\institucion`, Cap.1-2, Cap.4 |
| **Proyecto de Grado** | Trabajo final para optar al grado Técnico Medio, estructurado en 9 capítulos según RM 0912/2023. | `Proyecto de Grado` | Carátula `\formulagradobth` |
| **Prototipo funcional (V2.0)** | Sistema Web integral MVC (Vista-Controlador-Modelo PDO) con 7 módulos operativos en entorno producción. Variable Independiente de la investigación. | `SISTEMA WEB DE INSCRIPCIÓN ... VERSIÓN 2.0` o `V2.0` | Cap.4 `diseno.tex`, OE3, hipótesis |
| **Prueba piloto** | Ensayo controlado del prototipo con muestra 60 estudiantes + 5 funcionarios (conveniencia) y réplicas técnicas >100 pet/min. | `prueba piloto` minúsculas salvo inicio oración | Cap.5 `poblacion_muestra.tex`, `tecnicas_instrumentos.tex`, Cap.7 |
| **Validación técnica** | Verificación caja negra, concurrencia Apache Benchmark 2.4.58 y auditoría ACID PostgreSQL 16.4. | `validación técnica` | Cap.5 `analisis_datos.tex`, OE4 |
| **Escalamiento tecnológico** | Réplica del software a otros MTP (Cuatro Cañadas, San Ramón, San Javier, Guarayos) sin licencias, vía VPS + SSL. | `escalamiento` | Cap.6 `proyeccion_escalamiento.tex` |
| **Plan de mejora continua** | Acciones corto (0-6 meses <2 min), mediano (6-18 meses pre-auditoría QR) y largo (18+ meses SIGA) con matriz SMART. | `Plan de Mejora Continua` | Cap.6 `plan_mejora.tex` + `tablas/plan_mejora_ejemplo.tex` |
| **Modelo Canvas** | Lienzo de 9 bloques para modelo de negocio/proyecto (Anexo A). | `Modelo Canvas` | `anexos/anexo_a_canvas.tex` `\seccionanexo{Anexo A: Modelo Canvas}` |
| **Estudio de costos** | Análisis inversión 13556 Bs + fijos 190 Bs/mes + variables 100 Bs/ciclo + costo marginal <0.50. | `cálculo de costos` | Cap.4 `calculo_costos.tex` + `tablas/costos_*` |
| **Sistema Web** | Aplicación cliente-servidor HTTP/HTTPS que automatiza trámites centralizados. | `Sistema Web` mayúscula inicial | Cap.3 `marco_conceptual.tex` `\parencite{pressman2020}` |
| **Arquitectura MVC** | Patrón Modelo-Vista-Controlador: Vista (HTML5/CSS3/JS), Controlador (PHP 8.2/Apache 2.4), Modelo (PDO-PostgreSQL 16.4 ACID `FOR UPDATE`). | `arquitectura MVC` o `Modelo--Vista--Controlador` | Cap.4 `diseno.tex:6-14`, bases `pressman2020`/`tanenbaum2021` |
| **HTML5** | Lenguaje de marcado semántico para formularios. | `HTML5` (mayúsculas + dígito) | `\parencite{mdn2025}` |
| **CSS3 / Diseño Responsivo** | Hojas de estilo con media queries para adaptación móvil/PC. | `CSS3` | `\parencite{marcotte2018}` |
| **JavaScript** | Lenguaje cliente para validación reactiva. | `JavaScript` | `\parencite{mozilla2025}` |
| **PHP** | Lenguaje backend para lógica de negocio y transacciones. | `PHP` / `PHP 8.2` | `\parencite{arimetics2024}` |
| **PostgreSQL** | Motor relacional open source ACID con bloqueo fila `FOR UPDATE`. | `PostgreSQL 16.4` | `\parencite{postgresql2025}` |
| **ACID / Row-level locking** | Atomicidad, Consistencia, Aislamiento, Durabilidad; bloqueo pesimista fila. | `ACID` mayúsculas, `row-level locking` inglés cursiva | Cap.4, Cap.5, glosario técnico |
| **API REST** | Interfaz RESTful HTTP/JSON para interoperabilidad (futuro WhatsApp). | `API REST` | No usado en V2.0, reservado proyección |
| **Base de datos relacional** | Conjunto normalizado de tablas con integridad referencial. | `base de datos relacional` minúsculas | Cap.4 `diseno.tex` |
| **Autoservicio de Credenciales (Self-Service Password Reset)** | Recuperación autónoma <2 min vía C.I. + fecha nacimiento sin ventanilla. | `Autoservicio de Credenciales` mayúsculas | Cap.2-4, `\parencite{stallings2021}` |
| **Unidad Educativa de Procedencia** | Colegio humanístico origen que determina horario y paralelo (4to A/B). | `Unidad Educativa de Procedencia` | Cap.3 marco conceptual, Cap.4 asignación |
| **Tutores de Curso** | Docentes tutores designados por curso/paralelo (ej. 4to A/B) responsables de la verificación documental y conformación de grupos por unidad educativa de procedencia en V2.0; rol operativo del plantel de 35 docentes, distinto del Tutor Guía de grado. | `Tutores de Curso` (mayúsculas iniciales) | Cap.4 `diseno.tex:35,59`, Cap.5 `poblacion_muestra.tex:6,12`, `tablas/brechas_diagnostico.tex` |
| **Secretaría Académica** | Unidad de apoyo administrativo del MTP (1 responsable) encargada del archivo y custodia documental institucional, parte del plantel de funcionarios (Director, Secretaría, 35 Docentes). | `Secretaría Académica` | Cap.2 `diagnostico.tex:6`, `poblacion_muestra.tex:6` |
| **Transacción / Concurrencia** | Operación atómica; >100 peticiones/min concurrentes con latencia <1.2 s. | `transacción`, `concurrencia` | Cap.5-7, `tablas/especificaciones_tecnicas_ejemplo.tex` |
