# PROYECTO AGENCIA DE VIAJES

## Índice

- [Descripción del Proyecto](#descripción-del-proyecto)
- [Objetivos](#objetivos)
- [Situación Problemática](#situación-problemática)
- [Descripción de Tablas](#descripción-de-tablas)
  - [Clientes](#tabla-clientes)
  - [Reservas](#tabla-reservas)
  - [Paquetes](#paquetes)
  - [Vuelos](#tabla-vuelos)
  - [Hoteles](#tabla-hoteles)
  - [Pagos](#tabla-pagos)
  - [Empleados](#tabla-empleado)
- [Vistas](#vistas)
  - [vw_resumen_reservas](#nombre-de-la-vista-vw_resumen_reservas)
  - [vw_paquetes_populares](#nombre-de-la-vista-vw_paquetes_populares)
  - [vw_pagos_cliente](#nombre-de-la-vista-vw_pagos_cliente)
  - [vw_ingresos_empleado](#nombre-de-la-vista-vw_ingresos_empleado)
- [Triggers](#triggers)
  - [trg_insert_reservas](#nombre-del-trigger-trg_insert_reservas)
  - [trg_agregar_paquetes](#nombre-del-trigger-trg_agregar_paquetes)
  - [trg_actualizar_cupo_paquete](#nombre-del-trigger-trg_actualizar-cupo-paquete)

---

## Descripción del Proyecto

El presente proyecto tiene como objetivo el diseño y desarrollo de una base de datos relacional para una agencia de viajes, con el fin de organizar, centralizar y automatizar el manejo de información relacionada con sus principales operaciones: la gestión de clientes, reservas, pagos, paquetes turísticos, vuelos, hoteles y empleados.

En el contexto actual, las agencias de viajes requieren sistemas eficientes que les permitan mantener un control detallado y actualizado sobre sus operaciones, mejorar la atención al cliente y facilitar la toma de decisiones comerciales. La base de datos propuesta busca resolver estas necesidades mediante una estructura lógica, coherente y normalizada que represente las entidades clave del negocio y sus relaciones.

Este sistema permite generar consultas útiles como: reservas activas por cliente, ingresos generados, métodos de pago más utilizados, o disponibilidad de paquetes. También está diseñado para facilitar su integración futura con interfaces gráficas, plataformas web o sistemas externos de reservas.

## Objetivos

- Diseñar y desarrollar una base de datos relacional para una agencia de viajes que permita gestionar de manera eficiente la información relacionada con los clientes, paquetes turísticos, reservas, pagos, vuelos, hoteles y empleados, facilitando la automatización y control de las operaciones comerciales y administrativas.

## Situación Problemática

Muchas agencias de viajes enfrentan dificultades para gestionar de manera eficiente la información relacionada con clientes, reservas, pagos, paquetes turísticos, vuelos y alojamientos. La falta de una base de datos estructurada provoca problemas como:

- Duplicación de información
- Errores en la disponibilidad de paquetes
- Pérdida de datos financieros
- Dificultades para realizar reportes
- Falta de trazabilidad del personal

Estos inconvenientes generan ineficiencias operativas, aumentan los tiempos de respuesta y limitan la capacidad de la empresa para tomar decisiones informadas. Este proyecto propone una base de datos relacional para resolver esos problemas.

---

## Descripción de Tablas

### Tabla: Clientes

**Descripción:** Almacena la información personal de los clientes que utilizan los servicios de la agencia, permitiendo identificar, contactar y registrar su historial de reservas.

| Campo          | Tipo   | Descripción                    |
| -------------- | ------ | ------------------------------ |
| id             | número | Número de ID del cliente       |
| nombre         | texto  | Nombre del cliente             |
| apellido       | texto  | Apellido del cliente           |
| email          | texto  | Correo electrónico del cliente |
| dni            | texto  | Documento de identidad         |
| fecha_registro | fecha  | Fecha de registro del cliente  |
| nacionalidad   | número | Nacionalidad del cliente       |

---

### Tabla: Reservas

**Descripción:** Registra las reservas realizadas por los clientes sobre paquetes turísticos, incluyendo cantidad de personas, monto total y estado de la reserva.

| Campo         | Tipo   | Descripción                           |
| ------------- | ------ | ------------------------------------- |
| id            | número | ID de la reserva                      |
| cliente_id    | número | ID del cliente que realiza la reserva |
| paquete_id    | número | ID del paquete reservado              |
| fecha_reserva | fecha  | Fecha de la reserva                   |
| estado        | texto  | Estado de la reserva                  |
| num_personas  | número | Número de personas incluidas          |
| monto_total   | número | Costo total de la reserva             |

---

### Tabla: Paquetes

**Descripción:** Define los paquetes turísticos que la agencia ofrece, integrando vuelos y hoteles, junto con su duración, destino, precio y cupo disponible.

| Campo           | Tipo   | Descripción             |
| --------------- | ------ | ----------------------- |
| id              | número | ID del paquete          |
| nombre          | texto  | Nombre del paquete      |
| descripcion     | texto  | Descripción del paquete |
| destino         | texto  | Destino del paquete     |
| precio          | número | Precio del paquete      |
| fecha_inicio    | fecha  | Fecha de inicio         |
| fecha_fin       | fecha  | Fecha de finalización   |
| cupo_disponible | número | Cupo disponible         |
| hotel_id        | número | ID del hotel incluido   |
| vuelo_id        | número | ID del vuelo incluido   |

---

### Tabla: Vuelos

**Descripción:** Guarda los datos de los vuelos disponibles que pueden formar parte de un paquete, incluyendo su horario y ruta.

| Campo        | Tipo   | Descripción           |
| ------------ | ------ | --------------------- |
| id           | número | ID del vuelo          |
| aerolinea    | texto  | Aerolínea responsable |
| numero_vuelo | texto  | Número de vuelo       |
| origen       | texto  | Origen del vuelo      |
| destino      | texto  | Destino del vuelo     |
| hora_salida  | fecha  | Hora de salida        |
| hora_llegada | fecha  | Hora de llegada       |

---

### Tabla: Hoteles

**Descripción:** Contiene los datos de los hoteles disponibles para ser incluidos en paquetes, como su ubicación, categoría y medios de contacto.

| Campo       | Tipo   | Descripción                     |
| ----------- | ------ | ------------------------------- |
| id          | número | ID del hotel                    |
| nombre      | texto  | Nombre del hotel                |
| direccion   | texto  | Dirección del hotel             |
| ciudad      | texto  | Ciudad del hotel                |
| pais        | texto  | País del hotel                  |
| categoria   | número | Categoría del hotel (estrellas) |
| telefono    | texto  | Teléfono del hotel              |
| email       | texto  | Correo electrónico del hotel    |
| sitio_web   | texto  | Sitio web del hotel             |
| descripcion | texto  | Descripción del hotel           |

---

### Tabla: Pagos

**Descripción:** Registra los pagos asociados a reservas, detallando el monto, método y estado del pago (por ejemplo, pagado o pendiente).

| Campo       | Tipo   | Descripción                          |
| ----------- | ------ | ------------------------------------ |
| id          | número | ID del pago                          |
| reserva_id  | número | ID de la reserva asociada            |
| fecha_pago  | fecha  | Fecha en que se realizó el pago      |
| monto       | número | Monto abonado                        |
| metodo_pago | texto  | Método de pago utilizado             |
| estado_pago | texto  | Estado del pago (pagado o pendiente) |

---

### Tabla: Empleado

**Descripción:** Almacena la información del personal de la agencia que gestiona las reservas, útil para el control interno y análisis de desempeño.

| Campo              | Tipo   | Descripción           |
| ------------------ | ------ | --------------------- |
| id                 | número | ID del empleado       |
| nombre             | texto  | Nombre del empleado   |
| apellido           | texto  | Apellido del empleado |
| email              | texto  | Correo electrónico    |
| telefono           | texto  | Teléfono del empleado |
| puesto             | texto  | Puesto que ocupa      |
| fecha_contratacion | fecha  | Fecha de contratación |
| salario            | número | Salario del empleado  |

---

## Vistas

### Nombre de la vista: vw_resumen_reservas

Muestra información básica de cada reserva: nombre del cliente, paquete contratado, fecha, número de personas, monto total y estado.

### Nombre de la vista: vw_paquetes_populares

Presenta los paquetes turísticos más reservados por los clientes, con el número total de reservas asociadas a cada uno.

### Nombre de la vista: vw_pagos_cliente

Resume los pagos realizados por cada cliente: cantidad de pagos y monto total abonado.

### Nombre de la vista: vw_ingresos_empleado

Muestra cuántas reservas gestionó cada empleado y los ingresos generados por ellas.

---

## Triggers

### Nombre del trigger: trg_insert_reservas

Se activa **antes** de insertar una nueva reserva, asegurando que los campos críticos tengan valores válidos.

### Nombre del trigger: trg_agregar_paquetes

Replica automáticamente los datos insertados en la tabla `paquetes` hacia otra tabla llamada `nuevos_paquetes`.

### Nombre del trigger: trg_actualizar_cupo_paquete

Actualiza automáticamente el cupo disponible de un paquete turístico cuando se realiza una nueva reserva.
