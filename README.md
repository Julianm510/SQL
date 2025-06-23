# PROYECTO AGENCIA DE VIAJES

# 📘 PROYECTO FINAL SQL

**Profesor:** Camilo Andrés Redondo  
**Alumno:** Julián Muriel  
**Comisión:** #75950  
**Año:** 2025

---

## 📂 Índice

- [Descripción del Proyecto](#descripción-del-proyecto)
- [Objetivos](#objetivos)
- [Situación Problemática](#situación-problemática)
- [Diagrama Entidad-Relación](#diagrama-entidad-relación)
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

- [Conclusión](#-conclusión)

---

## Descripción del Proyecto

El presente proyecto tiene como objetivo el diseño y desarrollo de una base de datos relacional para una agencia de viajes, con el fin de organizar, centralizar y automatizar el manejo de información relacionada con sus principales operaciones: la gestión de clientes, reservas, pagos, paquetes turísticos, vuelos, hoteles y empleados.

En el contexto actual, las agencias de viajes requieren sistemas eficientes que les permitan mantener un control detallado y actualizado sobre sus operaciones, mejorar la atención al cliente y facilitar la toma de decisiones comerciales. La base de datos propuesta busca resolver estas necesidades mediante una estructura lógica, coherente y normalizada que represente las entidades clave del negocio y sus relaciones.

Entre los elementos principales se encuentra la gestión de clientes, permitiendo registrar y consultar su información personal y contacto. A su vez, se contemplan paquetes turísticos que agrupan vuelos y hoteles disponibles, definidos por fechas, precios y cupos. Los vuelos y hoteles son gestionados como entidades independientes, lo que permite su reutilización y actualización eficiente.

Las reservas representan las solicitudes de los clientes sobre paquetes específicos, y están directamente relacionadas con los pagos efectuados, los cuales se registran con sus métodos y estados. Además, se incluye la tabla de empleados, para llevar un control del personal que gestiona las reservas, lo que aporta trazabilidad interna y mejora la organización del trabajo.

Este sistema de base de datos permite generar consultas útiles como: reservas activas por cliente, ingresos generados, métodos de pago más utilizados, o disponibilidad de paquetes. También está diseñado para facilitar su integración futura con interfaces gráficas, plataformas web o sistemas externos de reservas.

En resumen, esta base de datos constituye una solución robusta, escalable y bien estructurada para la gestión integral de una agencia de viajes, mejorando la eficiencia operativa y la calidad del servicio al cliente.

## Objetivos

- Diseñar y desarrollar una base de datos relacional para una agencia de viajes que permita gestionar de manera eficiente la información relacionada con los clientes, paquetes turísticos, reservas, pagos, vuelos, hoteles y empleados, facilitando la automatización y control de las operaciones comerciales y administrativas.

## Situación Problemática

En el contexto actual del turismo, muchas agencias de viajes enfrentan dificultades para gestionar de manera eficiente la información relacionada con clientes, reservas, pagos, paquetes turísticos, vuelos y alojamientos. A medida que crece la demanda de servicios personalizados y se diversifican los destinos, se vuelve fundamental contar con sistemas que permitan organizar, consultar y actualizar datos de forma rápida, precisa y segura.

La falta de una base de datos estructurada provoca una serie de problemas comunes:

Duplicación de información, como clientes registrados más de una vez.

Errores en la disponibilidad de paquetes, debido a la gestión manual del cupo.

Pérdida de datos financieros, como pagos no registrados correctamente.

Dificultades para realizar reportes sobre ventas, desempeño de empleados o ingresos mensuales.

Falta de trazabilidad, al no poder identificar qué empleado gestionó una determinada reserva.

Estos inconvenientes generan ineficiencias operativas, aumentan los tiempos de respuesta y pueden afectar directamente la calidad del servicio ofrecido al cliente. Además, limitan la capacidad de la empresa para tomar decisiones basadas en datos reales y actualizados.

Frente a este panorama, surge la necesidad de desarrollar una base de datos relacional que permita a la agencia automatizar sus procesos clave, garantizar la integridad de los datos, y facilitar consultas y reportes para mejorar la toma de decisiones.

---

## Diagrama Entidad-Relación

A continuación se muestra el modelo entidad-relación del proyecto, donde se representan las tablas principales de la base de datos y sus relaciones:

![Diagrama Entidad-Relación](https://github.com/Julianm510/SQL/blob/main/DER.png?raw=true)

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

## ✅ Conclusión

El desarrollo de este proyecto permitió diseñar e implementar una base de datos relacional sólida, escalable y eficiente para una agencia de viajes. A través de una estructura lógica bien definida, se logró centralizar la información crítica del negocio, abarcando desde la gestión de clientes, reservas, pagos y paquetes turísticos, hasta el control de vuelos, hoteles y empleados.

El sistema facilita consultas clave para la toma de decisiones, mejora la trazabilidad de las operaciones internas y reduce significativamente los errores asociados al manejo manual de datos. Además, se incorporaron procedimientos almacenados, funciones y triggers que automatizan tareas recurrentes, aportando mayor eficiencia y seguridad a la gestión de datos.

En conjunto, esta solución representa una herramienta fundamental para modernizar los procesos administrativos y comerciales de una agencia de viajes, sentando las bases para su integración con aplicaciones externas y futuros sistemas de gestión.
