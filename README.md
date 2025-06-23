# PROYECTO AGENCIA DE VIAJES

## 📂 Índice

- [Descripción del Proyecto](#descripción-del-proyecto)
- [Objetivos](#objetivos)
- [Situación Problemática](#situación-problemática)
- [Descripción de Tablas](#descripción-de-tablas)

  - [Clientes](#tabla-clientes)
  - [Reservas](#tabla-reservas)
  - [Paquetes](#tabla-paquetes)
  - [Vuelos](#tabla-vuelos)
  - [Hoteles](#tabla-hoteles)
  - [Pagos](#tabla-pagos)
  - [Empleado](#tabla-empleado)

- [Vistas](#vistas)

  - [vw_resumen_reservas](#nombre-de-la-vista-vw_resumen_reservas)
  - [vw_paquetes_populares](#nombre-de-la-vista-vw_paquetes_populares)
  - [vw_pagos_cliente](#nombre-de-la-vista-vw_pagos_cliente)
  - [vw_ingresos_empleado](#nombre-de-la-vista-vw_ingresos_empleado)

- [Triggers](#triggers)

  - [trg_insert_reservas](#nombre-del-trigger-trg_insert_reservas)
  - [trg_agregar_paquetes](#nombre-del-trigger-trg_agregar_paquetes)
  - [trg_actualizar_cupo_paquete](#nombre-del-trigger-trg_actualizar_cupo_paquete)

- [Procedimientos Almacenados](#procedimientos-almacenados)

  - [sp_obtener_reservas_por_cliente](#nombre-del-procedimiento-sp_obtener_reservas_por_cliente)
  - [sp_actualizar_reserva_cliente](#nombre-del-procedimiento-sp_actualizar_reserva_cliente)

- [Funciones](#funciones)

  - [fn_cupos_disponibles](#nombre-de-la-funcion-fn_cupos_disponible)
  - [fn_total_reservas_cliente](#nombre-de-la-funcion-fn_total_reservas_cliente)
  - [fn_empleado_reservas](#nombre-de-la-funcion-fn_empleado_reservas)
  - [fn_cupos_ocupados_paquete](#nombre-de-la-funcion-fn_cupos_ocupados_paquete)

---

## Descripción del Proyecto

Este proyecto tiene como objetivo el diseño y desarrollo de una base de datos relacional para una agencia de viajes. Permite organizar, centralizar y automatizar la información de clientes, reservas, pagos, paquetes turísticos, vuelos, hoteles y empleados.

Facilita el control operativo, mejora la atención al cliente y permite consultas como reservas activas, ingresos generados, o disponibilidad de paquetes. Está preparado para integrarse a plataformas web o interfaces gráficas.

## Objetivos

- Diseñar una base de datos relacional que gestione eficientemente clientes, paquetes, reservas, pagos, vuelos, hoteles y empleados.
- Automatizar y controlar las operaciones comerciales y administrativas.

## Situación Problemática

Muchas agencias presentan dificultades en la gestión de información por falta de una estructura adecuada. Esto genera:

- Duplicación de datos
- Errores en disponibilidad
- Pérdida de datos financieros
- Dificultades en reportes
- Falta de trazabilidad

Una base de datos bien diseñada soluciona estas deficiencias, optimizando procesos y mejorando la toma de decisiones.

---

## Descripción de Tablas

### Tabla: Clientes

**Descripción:** Almacena datos personales de los clientes.

| Campo          | Tipo   | Descripción              |
| -------------- | ------ | ------------------------ |
| id             | número | ID del cliente           |
| nombre         | texto  | Nombre del cliente       |
| apellido       | texto  | Apellido del cliente     |
| email          | texto  | Correo electrónico       |
| dni            | texto  | Documento de identidad   |
| fecha_registro | fecha  | Fecha de registro        |
| nacionalidad   | número | Nacionalidad del cliente |

### Tabla: Reservas

**Descripción:** Registra reservas realizadas por los clientes.

| Campo         | Tipo   | Descripción               |
| ------------- | ------ | ------------------------- |
| id            | número | ID de la reserva          |
| cliente_id    | número | ID del cliente            |
| paquete_id    | número | ID del paquete reservado  |
| fecha_reserva | fecha  | Fecha de la reserva       |
| estado        | texto  | Estado de la reserva      |
| num_personas  | número | Número de personas        |
| monto_total   | número | Monto total de la reserva |

### Tabla: Paquetes

**Descripción:** Define los paquetes turísticos ofrecidos.

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

### Tabla: Vuelos

**Descripción:** Guarda información sobre los vuelos.

| Campo        | Tipo   | Descripción       |
| ------------ | ------ | ----------------- |
| id           | número | ID del vuelo      |
| aerolinea    | texto  | Aerolínea         |
| numero_vuelo | texto  | Número de vuelo   |
| origen       | texto  | Origen del vuelo  |
| destino      | texto  | Destino del vuelo |
| hora_salida  | fecha  | Hora de salida    |
| hora_llegada | fecha  | Hora de llegada   |

### Tabla: Hoteles

**Descripción:** Contiene información de hoteles asociados.

| Campo       | Tipo   | Descripción           |
| ----------- | ------ | --------------------- |
| id          | número | ID del hotel          |
| nombre      | texto  | Nombre del hotel      |
| direccion   | texto  | Dirección             |
| ciudad      | texto  | Ciudad                |
| pais        | texto  | País                  |
| categoria   | número | Categoría (estrellas) |
| telefono    | texto  | Teléfono              |
| email       | texto  | Correo electrónico    |
| sitio_web   | texto  | Sitio web             |
| descripcion | texto  | Descripción del hotel |

### Tabla: Pagos

**Descripción:** Registra pagos asociados a reservas.

| Campo       | Tipo   | Descripción      |
| ----------- | ------ | ---------------- |
| id          | número | ID del pago      |
| reserva_id  | número | ID de la reserva |
| fecha_pago  | fecha  | Fecha del pago   |
| monto       | número | Monto abonado    |
| metodo_pago | texto  | Método de pago   |
| estado_pago | texto  | Estado del pago  |

### Tabla: Empleado

**Descripción:** Guarda información del personal de la agencia.

| Campo              | Tipo   | Descripción           |
| ------------------ | ------ | --------------------- |
| id                 | número | ID del empleado       |
| nombre             | texto  | Nombre                |
| apellido           | texto  | Apellido              |
| email              | texto  | Correo electrónico    |
| telefono           | texto  | Teléfono              |
| puesto             | texto  | Puesto                |
| fecha_contratacion | fecha  | Fecha de contratación |
| salario            | número | Salario               |

---

## Vistas

### Nombre de la vista: vw_resumen_reservas

Muestra datos resumidos de las reservas realizadas por los clientes.

### Nombre de la vista: vw_paquetes_populares

Lista los paquetes más reservados y la cantidad de reservas de cada uno.

### Nombre de la vista: vw_pagos_cliente

Resume cuántos pagos hizo un cliente y el total abonado.

### Nombre de la vista: vw_ingresos_empleado

Indica cuántas reservas gestionó un empleado y los ingresos generados.

---

## Triggers

### Nombre del trigger: trg_insert_reservas

Se activa antes de insertar una reserva. Valida datos antes del registro.

### Nombre del trigger: trg_agregar_paquetes

Copia los nuevos paquetes a una tabla de auditoría `nuevos_paquetes`.

### Nombre del trigger: trg_actualizar_cupo_paquete

Actualiza automáticamente el cupo del paquete al hacer una nueva reserva.

---

## Procedimientos Almacenados

### Nombre del procedimiento: sp_obtener_reservas_por_cliente

**Descripción:** Devuelve todas las reservas de un cliente, mostrando el nombre del paquete, fecha, estado y monto total.

### Nombre del procedimiento: sp_actualizar_reserva_cliente

**Descripción:** Actualiza el paquete asociado a una reserva existente. Devuelve un mensaje con el resultado.

---

## Funciones

### Nombre de la función: fn_cupos_disponible

**Descripción:** Devuelve la cantidad de cupos disponibles para un paquete.
**Objetivo:** Consultar rápidamente la disponibilidad.

### Nombre de la función: fn_total_reservas_cliente

**Descripción:** Retorna cuántas reservas hizo un cliente.
**Objetivo:** Resumir su historial de reservas.

### Nombre de la función: fn_empleado_reservas

**Descripción:** Indica cuántas reservas fueron gestionadas por un empleado.
**Objetivo:** Evaluar productividad del personal.

### Nombre de la función: fn_cupos_ocupados_paquete

**Descripción:** Muestra cuántos cupos de un paquete ya están ocupados.
**Objetivo:** Controlar disponibilidad real.
