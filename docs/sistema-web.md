# Planificación de Recursos y Cálculo de Costos: Sistema Web

Este documento establece la estructura y registro detallado de estimación presupuestaria para el análisis, diseño, desarrollo, despliegue, infraestructura y mantenimiento de un **Sistema Web Transaccional de Gestión de Pedidos, Facturación en Línea (SIAT) y Control de Inventarios**, estructurado conforme a [notes.txt](file:///home/juanvladimir13/Projects/proyecto-grado/recursos-costos/notes.txt) y contextualizado en el entorno técnico, financiero y tributario del Estado Plurinacional de Bolivia.

---

## Información General del Proyecto

- **Nombre del Sistema:** Sistema Web Transaccional de Gestión de Pedidos, Facturación en Línea (SIAT) y Control de Inventarios
- **Tipo de Sistema:** Aplicación Web Transaccional Multi-rol con arquitectura MVC/MVT construida con **Python 3.13** y **Django 5.2**, base de datos relacional **PostgreSQL 18**, interfaz renderizada mediante Django Templates con **HTML5 semántico, CSS3 puro (sin frameworks de CSS)** y **Vanilla JavaScript**, desplegada en un servidor **Contabo Cloud VPS 4**
- **Alcance / Módulos Principales:**
  1. Módulo de Autenticación y Control de Accesos por Roles (RBAC nativo de Django con sesiones seguras).
  2. Módulo de Gestión de Catálogo y Control de Stock/Inventarios con alertas de mínimos mediante Django ORM.
  3. Módulo de Registro de Pedidos, Carrito y Ventas en Línea con pasarela QR interoperable.
  4. Módulo de Facturación Electrónica en Línea adaptada a la normativa SIAT del Servicio de Impuestos Nacionales (SIN).
  5. Módulo de Dashboard Analítico, Reportes Gerenciales y Auditoría de Transacciones con Django Admin personalizado.
- **Moneda Base:** Bolivianos (`Bs.`)
- **Horizonte de Evaluación Operativa:** 12 meses (Año 1)
- **Responsable del Registro:** Proyectista / Desarrollador de Grado
- **Fecha de Elaboración:** Octubre 2026

---

## 1. Recursos

### 1.1. Recursos Humanos

Equipo de ingeniería de software indispensable para el ciclo de vida del sistema web, concentrado exclusivamente en los roles base de desarrollo.

#### 1.1.1. Roles Base del Núcleo de Desarrollo (Core Team)

Perfiles esenciales para el diseño, desarrollo, aseguramiento de calidad y puesta en producción del sistema web (dedicación ágil y compacta optimizada mediante Django y CSS puro).

| N° | Rol / Perfil Profesional | Responsabilidades Técnicas Principales | Modalidad | Horas Estimadas | Tarifa / Hora (Bs.) | Subtotal (Bs.) |
|:--:|:---|:---|:---|:---:|:---:|:---:|
| 1 | Líder de Proyecto / Product Owner | Planificación, gestión de backlog, coordinación de sprints y control de hitos | Por hito / Horas | 13 hrs | 35.00 | 455.00 |
| 2 | Arquitecto de Software / Tech Lead | Diseño de arquitectura MVC, esquemas de BD en PostgreSQL 18, seguridad y estándares | Por hito / Horas | 8 hrs | 40.00 | 320.00 |
| 3 | Desarrollador Backend | Construcción de lógica de negocio en **Python 3.13** y **Django 5.2**, Django ORM, persistencia y servicios SIAT | Por hito / Horas | 35 hrs | 32.50 | 1,137.50 |
| 4 | Desarrollador Frontend | Maquetación en **HTML5 semántico**, estilos avanzados con **CSS3 puro** (sin frameworks CSS) y dinamismo con **Vanilla JS** | Por hito / Horas | 30 hrs | 30.00 | 900.00 |
| 5 | Diseñador UI/UX | Arquitectura de información, wireframes, diseño visual responsivo y maquetas adaptables a CSS puro | Por hito / Horas | 10 hrs | 25.00 | 250.00 |
| 6 | Ingeniero de QA / Testing | Plan de pruebas funcionales, pruebas de integración Django Test, endpoints y regresión | Por hito / Horas | 12 hrs | 22.50 | 270.00 |
| 7 | Administrador DevOps / SysAdmin | Aprovisionamiento y despliegue en **Contabo Cloud VPS 4**, Linux, Nginx, Gunicorn y CI/CD en GitHub | Por hito / Horas | 7 hrs | 32.50 | 227.50 |
| **Subtotal Roles Base** | | | | **115 hrs** | | **3,560.00** |

#### 1.1.2. Consolidado Total de Recursos Humanos

| Concepto | Horas Totales Estimadas | Monto Presupuestado (Bs.) |
|:---|:---:|:---:|
| Total Roles Base (Núcleo de Desarrollo - Core Team) | 115 hrs | 3,560.00 |
| **Total General de Recursos Humanos** | **115 hrs** | **3,560.00** |

---

### 1.2. Recursos Materiales y Tecnológicos

Infraestructura de hardware, estaciones de trabajo, herramientas de desarrollo, licencias y conectividad necesarias para la construcción y prueba del sistema.

| N° | Ítem / Recurso Tecnológico | Especificaciones Técnicas Requeridas | Cantidad | Tipo (Propio / Adquirido / Alquiler) | Estado / Condición | Observaciones de Uso |
|:--:|:---|:---|:---:|:---|:---|:---|
| 1 | Estaciones de Trabajo / Laptops | Laptop con procesador AMD Ryzen 7 / Intel Core i7 (8 núcleos / 16 hilos), 16 GB RAM DDR4, SSD NVMe 1 TB, SO Linux | 1 equipo | Propio | Operativo / Óptimo | Estación principal para codificación, pruebas locales y compilación |
| 2 | Servidor Cloud de Producción | **Contabo Cloud VPS 4** (4 vCPU Cores, 8 GB RAM, 100 GB SSD NVMe, puerto 200 Mbit/s, 1 IP estática IPv4) | 1 servidor | Alquiler Cloud | Operativo / Activo | Servidor cloud para despliegue de Django 5.2, Nginx, Gunicorn y PostgreSQL 18 |
| 3 | Dispositivos de Validación | Smartphone Android (pantalla 6.5" FHD+, Android 13+) y Tablet 10" para validación de responsividad | 2 dispositivos | Propio | Operativo | Verificación de experiencia responsive con CSS puro y validación de cobros QR |
| 4 | Licencias de Entornos de Desarrollo (IDEs) | **Python 3.13**, framework **Django 5.2**, venv, Visual Studio Code y Antigravity IDE con extensiones | 2 suites | Libre / Gratuito | Instalado | Herramientas de edición, depuración y asistencia inteligente |
| 5 | Herramientas de Base de Datos y APIs | **PostgreSQL 18** (local y en VPS), pgAdmin 4, DBeaver Community y Postman / Insomnia | 4 herramientas | Libre / Open Source | Instalado | Modelado relacional, ejecución de scripts SQL y validación de endpoints REST |
| 6 | Conectividad y Red | Enlace de fibra óptica simétrico 150 Mbps de Entel Bolivia con router Wi-Fi 6 doble banda | 1 servicio | Servicio continuo | Activo | Descarga de paquetes, sincronización con GitHub y despliegues en servidores cloud |

---

### 1.3. Recursos Financieros

Fondos económicos previstos para cubrir las fases de análisis, desarrollo, licenciamiento y operación continua del sistema web en Bolivia, articulando aporte propio en efectivo con microcrédito productivo regulado por la ASFI.

| N° | Fuente de Financiamiento | Entidad / Origen | Tipo de Fondo | Monto Presupuestado (Bs.) | Porcentaje (%) | Destino de los Recursos |
|:--:|:---|:---|:---|:---:|:---:|:---|
| 1 | **Aporte Propio en Efectivo** | Fondos propios / Ahorros del emprendedor | Interno (Líquido) | 1,275.00 | 30.00 % | Pago de arancel de dominio territorial ADSIB `.com.bo` (Bs. 140.00), token criptográfico físico SIAT (Bs. 175.00) y parte de desarrollo de software (Bs. 960.00) |
| 2 | **Microcrédito Productivo** | Banco de Desarrollo Productivo (**BDP**) / Banco Unión | Externo (Banca) | 2,975.00 | 70.00 % | Saldo de servicios de desarrollo de software (Bs. 2,600.00) y fondo de contingencias (Bs. 375.00) |
| 3 | **Fondos de fomento / Subvenciones** | No aplica financiamiento adicional de terceros | Externo | 0.00 | 0.00 % | No se requiere financiamiento adicional |
| **Total** | **Presupuesto Financiero en Efectivo (Cash Flow)** | | | **4,250.00** | **100.00 %** | **Capital líquido indispensable para puesta en marcha** |

#### 1.3.1. Notas sobre la Estructura de Financiamiento
1. **Moneda Oficial:** Todos los montos se encuentran presupuestados en Bolivianos (`Bs.`), conforme a la normativa cambiaria vigente.
2. **Capacidad de Pago y Amortización Bancaria:** El financiamiento externo del 70.00% (Bs. 2,975.00) está estructurado bajo el programa *Emprende BDP* (Banco de Desarrollo Productivo) a una tasa regulada ASFI del 7.5% anual a 24 meses plazo, generando una cuota mensual estimada de amortización de aprox. **Bs. 133.87 / mes**.
3. **Cobertura Total de la Inversión Inicial (100% Efectivo):**
   - El presupuesto disponible en efectivo de **Bs. 4,250.00** cubre de manera íntegra el 100% de los Costos de Inversión Inicial (CAPEX) del proyecto (**Bs. 4,250.00** en la Sección 2.1).
   - El esquema asegura la ejecución completa de entregables de ingeniería de software (Bs. 3,560.00), aranceles regulatorios de dominio `.com.bo` y token físico ADSIB (Bs. 315.00) y la reserva de contingencias (Bs. 375.00) sin requerir salidas adicionales de caja.
   - **Total Inversión Inicial Financiada (CAPEX):** **Bs. 4,250.00** (100.00%).

---

## 2. Cálculo de Costos

### 2.1. Costos de Inversión (Inversión Inicial / Puesta en Marcha)

Costos no recurrentes ejecutados durante las etapas de ingeniería, desarrollo, configuración de arquitectura y puesta en producción del sistema web.

| N° | Concepto de Inversión | Descripción y Entregables (Core Team) | Unidad | Cantidad | Costo Unitario (Bs.) | Monto Total (Bs.) |
|:--:|:---|:---|:---:|:---:|:---:|:---:|
| 1 | Levantamiento y Análisis de Requerimientos | Especificación de requisitos SRS y backlog de historias (Líder PO - 13 hrs) | Servicio | 1 | 455.00 | 455.00 |
| 2 | Diseño de Arquitectura y Base de Datos | Diagrama C4 y esquemas relacionales en **PostgreSQL 18** (Tech Lead - 8 hrs) | Servicio | 1 | 320.00 | 320.00 |
| 3 | Desarrollo del Backend y APIs | Lógica transaccional con **Python 3.13** y **Django 5.2**, catálogo, pedidos, JWT y adaptadores SIAT (Backend - 35 hrs) | Servicio | 1 | 1,137.50 | 1,137.50 |
| 4 | Desarrollo del Frontend / Dashboard | Vistas Django Templates con **HTML5 semántico**, estilos en **CSS3 puro** y **Vanilla JS** (Frontend 30h + UI/UX 10h) | Servicio | 1 | 1,150.00 | 1,150.00 |
| 5 | Licencias de Software Iniciales | Sistema Operativo Linux, **Python 3.13**, **Django 5.2**, **PostgreSQL 18**, Nginx y Git | Licencia | 1 | 0.00 | 0.00 |
| 6 | Configuración de Servidores y Pipeline CI/CD | Aprovisionamiento de **Contabo Cloud VPS 4**, Linux, Nginx, Gunicorn y CI/CD (DevOps - 7 hrs) | Servicio | 1 | 227.50 | 227.50 |
| 7 | Pruebas y Aseguramiento de Calidad (QA) | Pruebas funcionales integrales Django Test y validación de flujos (QA Testing - 12 hrs) | Servicio | 1 | 270.00 | 270.00 |
| 8 | Registro de Dominio Territorial Oficial `.com.bo` | Dominio comercial territorial registrado ante la **ADSIB** (NIC Bolivia, arancel oficial anual de Bs. 140.00) | Anual | 1 | 140.00 | 140.00 |
| 9 | Dispositivo Token Criptográfico Físico SIAT | Dispositivo token USB criptográfico homologado FIPS 140-2 provisto por la **ADSIB** (arancel oficial de Bs. 175.00) | Unidad/Trámite | 1 | 175.00 | 175.00 |
| 10 | Fondo de Reserva para Contingencias | Reserva de contingencia de inversión (8.82% del CAPEX; 9.68% sobre costos directos) ante imprevistos técnicos o APIs | Global | 1 | 375.00 | 375.00 |
| **Total Inversión Inicial** | | | | | | **4,250.00** |

#### 2.1.1. Resumen por Tipo de Activo de Inversión
- **Activos Fijos Tangibles:** Bs. 0.00 *(Equipos de cómputo propios ya amortizados no requieren erogación)*.
- **Activos Intangibles / Servicios de Ingeniería de Software (Core Team):** Bs. 3,560.00 (83.76%).
- **Activos Intangibles y Regulatorios (Dominio .com.bo + Token Criptográfico ADSIB):** Bs. 315.00 (7.41%).
- **Reserva para Contingencias de Inversión:** Bs. 375.00 (8.82% del total financiado; 9.68% sobre inversión base de Bs. 3,875.00). *(Redondeo consolidado al 100.00%: 83.76% + 7.41% + 8.83% = 100.00%)*.
- **Total Inversión Inicial (CAPEX):** **Bs. 4,250.00** (100.00%).
  - *Financiado al 100% mediante Capital en Efectivo (Sección 1.3):* Distribuido en Aporte Propio Líquido de Bs. 1,275.00 (30.00%) y Microcrédito BDP de Bs. 2,975.00 (70.00%), sin requerir endeudamiento adicional.

---

### 2.2. Costos de Operación

Gastos periódicos indispensables para garantizar la disponibilidad, soporte continuo, rendimiento y adaptabilidad del sistema web en producción durante 12 meses.

| N° | Concepto de Costo Operativo | Detalle de la Actividad | Frecuencia de Pago | Costo por Período (Bs.) | Costo Anual Proyectado (Bs.) |
|:--:|:---|:---|:---:|:---:|:---:|
| 1 | Mantenimiento Preventivo y Correctivo | Corrección de bugs, parches de seguridad, optimización de queries Django ORM y dependencias Python | Mensual | 250.00 | 3,000.00 |
| 2 | Soporte Técnico a Usuarios (Nivel 1 y 2) | Mesa de ayuda, atención a incidencias operativas de cajeros y administradores | Mensual | 175.00 | 2,100.00 |
| 3 | Administración y Afinamiento de Base de Datos (DBA) | Monitoreo de integridad, reindexación periódica, vacuum en **PostgreSQL 18** y tuning de memoria | Mensual | 100.00 | 1,200.00 |
| 4 | Gestión de Copias de Seguridad y DRP | Almacenamiento seguro de respaldos en la nube (AWS S3 / Google Cloud Storage 200 GB) | Mensual | 35.00 | 420.00 |
| 5 | Monitoreo y Telemetría del Sistema | Servicio de telemetría, monitoreo de uptime y registro de excepciones (Sentry / UptimeRobot) | Mensual | 70.00 | 840.00 |
| **Total Costo Operativo Anual** | | | | **630.00 / mes** | **7,560.00** |

---

### 2.3. Costos Variables

Costos directamente ligados a la carga de trabajo, volumen de datos procesados, transacciones ejecutadas o consumo dinámico de infraestructura cloud.

| N° | Concepto Variable | Criterio de Consumo | Unidad de Medida | Tarifa Unitaria (Bs.) | Volumen Mensual Estimado | Costo Mensual Estimado (Bs.) | Costo Anual Proyectado (Bs.) |
|:--:|:---|:---|:---:|:---:|:---:|:---:|:---:|
| 1 | Cómputo Nube por Demanda (Auto-scaling) | Picos extraordinarios en campañas y cierres de mes | Hora vCPU | 3.50 | 20 hrs/mes | 70.00 | 840.00 |
| 2 | Almacenamiento de Datos y Archivos Adjuntos | Facturas XML firmadas y comprobantes PDF | GB almacenado | 0.70 | 50 GB/mes | 35.00 | 420.00 |
| 3 | Tráfico de Datos Saliente (Data Egress) | Descarga masiva de reportes contables y catálogos | GB transferido | 0.125 | 200 GB/mes | 25.00 | 300.00 |
| 4 | Servicios de Pasarela de Pago | Comisión QR Simple interoperable (~1.5% s/ ticket Bs. 80) | Transacción QR | 1.20 | 150 tx/mes | 180.00 | 2,160.00 |
| 5 | Servicios de Notificación Transaccional | Comprobantes por WhatsApp Business API y SMTP | Mensaje / Envío | 0.20 | 300 envíos/mes | 60.00 | 720.00 |
| 6 | APIs Externas de Terceros | Validación de NIT y códigos CUFD/CUF (SIAT/SIN) | Bloque mensual | 50.00 | 1 bloque/mes | 50.00 | 600.00 |
| **Total** | **Costos Variables Estimados** | | | | | **420.00 / mes** | **5,040.00 / año** |

---

### 2.4. Costos Fijos

Costos que no varían con el número de usuarios concurrentes ni con el volumen transaccional durante el período operativo.

| N° | Concepto Fijo | Detalle del Servicio / Recurso | Periodicidad | Monto Mensual (Bs.) | Monto Anual (Bs.) |
|:--:|:---|:---|:---:|:---:|:---:|
| 1 | Servidor VPS Cloud Base | Servidor cloud **Contabo Cloud VPS 4** (4 vCPU, 8 GB RAM, 100 GB SSD NVMe, tráfico ilimitado) | Mensual | 45.00 | 540.00 |
| 2 | Dirección IP Pública Fija Dedicada | Asignación de 1 dirección IPv4 fija dedicada (incluida en el plan de Contabo Cloud VPS 4) | Mensual | 0.00 | 0.00 |
| 3 | Certificado de Seguridad SSL/TLS Wildcard | Certificado con cifrado TLS emitido y autorenovado por Let's Encrypt / Certbot | Anual prorrateado | 0.00 | 0.00 |
| 4 | Licencias de Plataforma SaaS y Gestión | Suscripción a GitHub Team para versionamiento de código, branches y CI/CD | Mensual | 35.00 | 420.00 |
| 5 | Enlace de Internet Dedicado / Telecomunicaciones | Porción proporcional imputada (35%) del enlace de fibra óptica Entel Bolivia 150 Mbps | Mensual | 70.00 | 840.00 |
| 6 | Fee Fijo de Administración y Sysadmin | Servicio mensual convenido para auditoría preventiva de servidores, parches del SO y logs | Mensual | 250.00 | 3,000.00 |
| 7 | Renovación de Dominio Territorial Oficial `.bo` | Arancel oficial de renovación anual ante la **ADSIB** (NIC Bolivia) (Bs. 280 / 12 meses) | Anual prorrateado | 23.33 | 280.00 |
| 8 | Renovación Anual de Firma Digital SIAT | Renovación de certificado para facturación electrónica en línea ante la **ADSIB** (Bs. 195 / 12 meses) | Anual prorrateado | 16.25 | 195.00 |
| **Total Costos Fijos** | | | | **439.58 / mes** | **5,275.00 / año** |

> **Nota de vigencia y provisión:** Los aranceles de dominio y token de hardware cancelados en la Inversión Inicial (Sección 2.1) cubren los primeros 12 meses de vigencia operativa (Año 1). La imputación mensual en Costos Fijos (Ítems 7 y 8) constituye la provisión y devengamiento contable mensual (arancel oficial ADSIB para dominio institucional `.bo` de Bs. 280.00 / 12 meses = Bs. 23.33/mes y renovación de certificado SIAT de Bs. 195.00 / 12 meses = Bs. 16.25/mes) necesaria para financiar la continuidad al inicio del Año 2 sin generar impactos imprevistos en caja. La suma anual exacta consolida los Bs. 5,275.00 anuales (desfase por redondeo de centavos: Bs. 0.04).

#### 2.4.1. Estructura de Costos Operativos Anuales (OPEX Total)
- **Costos de Operación (Mantenimiento y Soporte):** Bs. 7,560.00 / año (42.29% del OPEX).
- **Costos Fijos de Infraestructura:** Bs. 5,275.00 / año (29.51% del OPEX).
- **Costos Variables Transaccionales:** Bs. 5,040.00 / año (28.20% del OPEX).
- **Costo Operativo Integral Anual (OPEX Total):** **Bs. 17,875.00 / año** *(Promedio mensual: **Bs. 1,489.58 / mes**)*.

---

## 3. Resumen y Consolidación de Costos

Matriz consolidada para el cálculo del Costo Total de Propiedad (TCO - *Total Cost of Ownership*) durante el primer año de vida del sistema web.

| N° | Componente Presupuestario | Inversión Inicial (Bs.) | Costo Mensual Promedio (Bs.) | Subtotal Anual (Bs.) | Participación (%) |
|:--:|:---|:---:|:---:|:---:|:---:|
| 1 | **Costos de Inversión** (Ingeniería y Puesta en Marcha) | 4,250.00 | - | 4,250.00 | 19.21 % |
| 2 | **Costos de Operación** (Mantenimiento Preventivo y Soporte a Usuarios) | - | 630.00 | 7,560.00 | 34.17 % |
| 3 | **Costos Variables** (Comisiones QR, Cómputo por Demanda y Notificaciones) | - | 420.00 | 5,040.00 | 22.78 % |
| 4 | **Costos Fijos** (Contabo VPS 4, Dominio ADSIB, Firma Digital y Red) | - | 439.58 | 5,275.00 | 23.84 % |
| **Total** | **Presupuesto Total Requerido (Año 1)** | **4,250.00** | **1,489.58** *(OPEX)* | **22,125.00** | **100.00 %** |

#### 3.1. Interpretación Presupuestaria y Flujo Financiero
- **Inversión Inicial de Capital (CAPEX):** **Bs. 4,250.00** (19.21% del TCO del primer año), cubierta de forma íntegra mediante el financiamiento disponible en efectivo de la Sección 1.3 (30.00% aporte propio de Bs. 1,275.00 y 70.00% microcrédito BDP de Bs. 2,975.00).
- **Sostenimiento Operativo Anual (OPEX Total):** **Bs. 17,875.00** (80.79% del TCO del primer año), con una erogación media mensual de **Bs. 1,489.58 / mes**. Si se prorratea adicionalmente la inversión inicial en 12 meses (Bs. 354.17 / mes), el costo mensual promedio integral del Año 1 (TCO / 12) alcanza los **Bs. 1,843.75 / mes**.
- **Flujo de Caja Mensual Líquido de la Empresa:** Sumando el costo operativo corriente (Bs. 1,489.58/mes) y la cuota de amortización del microcrédito BDP (Bs. 133.87/mes: amortización de capital promedio de Bs. 119.33 e interés de Bs. 14.54 en el Año 1), el requerimiento mensual en efectivo para operar y saldar pasivos es de aprox. **Bs. 1,623.46 / mes** (cálculo exacto: Bs. 1,489.583 + Bs. 133.874 = Bs. 1,623.457), umbral sumamente bajo y accesible que minimiza la presión financiera y garantiza la alta viabilidad económica del sistema web en Bolivia.
- **Servicio de Deuda e Intereses Bancarios (Costo Financiero):** El microcrédito BDP de Bs. 2,975.00 devenga en el primer año un costo financiero de **Bs. 174.57** en intereses (con una amortización de capital de Bs. 1,431.92, totalizando Bs. 1,606.49 pagados al banco en el Año 1), dejando un saldo deudor remanente de capital de Bs. 1,543.08 para el Año 2 (intereses totales acumulados a 24 meses: Bs. 237.97).

---

## 4. Notas y Consideraciones Técnicas

1. **Marco Legal y Facturación Electrónica en Bolivia (SIAT / SIN):** El sistema cumple con la Ley N° 164 (Telecomunicaciones y TIC) y las Resoluciones Normativas de Directorio del Servicio de Impuestos Nacionales (SIN). La emisión de facturas electrónicas requiere el uso de token físico y certificado de firma digital otorgado por la **ADSIB**, así como comunicación SOAP/REST segura con los servidores tributarios del SIAT.
2. **Plataformas de Cobro y Regulación Financiera (ASFI / ASOBAN):** La pasarela de cobros electrónicos opera mediante el estándar nacional de **código QR Simple interoperable**, homologado por el Banco Central de Bolivia (BCB) y la ASFI, asegurando liquidación inmediata en cuentas de bancos bolivianos con comisiones competitivas (1.2% - 1.5%).
3. **Soberanía Digital y Dominio Territorial:** El dominio corporativo `.bo` se registra oficialmente ante la **ADSIB** (Agencia para el Desarrollo de la Sociedad de la Información en Bolivia), garantizando la protección de marca y titularidad legal del emprendimiento.
4. **Eficiencia y Seguridad del Stack Tecnológico:**
   - **Backend en Python 3.13 y Django 5.2:** Arquitectura MVC/MVT madura y robusta. Proporciona protección nativa contra vulnerabilidades comunes (inyecciones SQL mediante Django ORM parametrizado, mitigación de CSRF con tokens obligatorios, protección contra Clickjacking y hashing seguro de credenciales con PBKDF2/Argon2). Python 3.13 aporta optimizaciones de rendimiento en el intérprete y capacidades asíncronas para tareas en segundo plano.
   - **Base de Datos PostgreSQL 18:** Motor relacional enterprise con aislamiento ACID completo, soporte nativo de tipos JSONB para indexar estructuras dinámicas de facturación del SIAT, control de concurrencia multiversión (MVCC) y compatibilidad directa con las migraciones de Django ORM.
   - **Frontend Puro sin Frameworks de CSS (Zero CSS Frameworks):** El uso exclusivo de **HTML5 semántico, CSS3 nativo (Flexbox, CSS Grid, variables CSS nativas)** y **Vanilla JavaScript** elimina por completo la sobrecarga de librerías externas (Bootstrap, Tailwind). Esto asegura una velocidad de carga ultrarrápida, una puntuación perfecta en Google Lighthouse (Core Web Vitals), independencia de gestores de paquetes como npm para la capa de presentación y cero riesgo de dependencias CSS obsoletas o vulnerables.
   - **Infraestructura Cloud en Contabo Cloud VPS 4:** El servidor aprovisionado en **Contabo Cloud VPS 4** (4 núcleos vCPU, 8 GB de memoria RAM, 100 GB SSD NVMe y dirección IPv4 estática dedicada) ofrece una potencia de cómputo excepcional a una tarifa reducida de **Bs. 45.00 / mes** (~$6.50 USD/mes). Esta capacidad garantiza que el servidor web Nginx, el servidor de aplicaciones Gunicorn (WSGI) y el motor PostgreSQL 18 coexistan con amplio margen de procesamiento y memoria libre para absorber picos de tráfico transaccional.
   - **Políticas de Respaldo 3-2-1:** Copias de seguridad automáticas diarias de la base de datos (pg_dump) con retención local en el VPS y réplica remota cifrada en la nube (AWS S3 / Google Cloud Storage) con al menos 30 días de retención.
