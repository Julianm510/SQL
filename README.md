# PROYECTO AGENCIA DE VIAJES

## Índice

- Descripción del proyecto.

- Objetivos.

- Situación problemática.

- Descripción de tablas.

- Vistas.

- Triggers.

## Descripción del Proyecto

El presente proyecto tiene como objetivo el diseño y desarrollo de una base de datos relacional para una agencia de viajes, con el fin de organizar, centralizar y automatizar el manejo de información relacionada con sus principales operaciones: la gestión de clientes, reservas, pagos, paquetes turísticos, vuelos, hoteles y empleados.

En el contexto actual, las agencias de viajes requieren sistemas eficientes que les permitan mantener un control detallado y actualizado sobre sus operaciones, mejorar la atención al cliente y facilitar la toma de decisiones comerciales. La base de datos propuesta busca resolver estas necesidades mediante una estructura lógica, coherente y normalizada que represente las entidades clave del negocio y sus relaciones.

Entre los elementos principales se encuentra la gestión de clientes, permitiendo registrar y consultar su información personal y contacto. A su vez, se contemplan paquetes turísticos que agrupan vuelos y hoteles disponibles, definidos por fechas, precios y cupos. Los vuelos y hoteles son gestionados como entidades independientes, lo que permite su reutilización y actualización eficiente.

Las reservas representan las solicitudes de los clientes sobre paquetes específicos, y están directamente relacionadas con los pagos efectuados, los cuales se registran con sus métodos y estados. Además, se incluye la tabla de empleados, para llevar un control del personal que gestiona las reservas, lo que aporta trazabilidad interna y mejora la organización del trabajo.

Este sistema de base de datos permite generar consultas útiles como: reservas activas por cliente, ingresos generados, métodos de pago más utilizados, o disponibilidad de paquetes. También está diseñado para facilitar su integración futura con interfaces gráficas, plataformas web o sistemas externos de reservas.

En resumen, esta base de datos constituye una solución robusta, escalable y bien estructurada para la gestión integral de una agencia de viajes, mejorando la eficiencia operativa y la calidad del servicio al cliente.

## Obetivos

- Diseñar y desarrollar una base de datos relacional para una agencia de viajes que permita gestionar de manera eficiente la información relacionada con los clientes, paquetes turísticos, reservas, pagos, vuelos, hoteles y empleados, facilitando la automatización y control de las operaciones comerciales y administrativas.

## Situación problemática.

En el contexto actual del turismo, muchas agencias de viajes enfrentan dificultades para gestionar de manera eficiente la información relacionada con clientes, reservas, pagos, paquetes turísticos, vuelos y alojamientos. A medida que crece la demanda de servicios personalizados y se diversifican los destinos, se vuelve fundamental contar con sistemas que permitan organizar, consultar y actualizar datos de forma rápida, precisa y segura.

La falta de una base de datos estructurada provoca una serie de problemas comunes:

Duplicación de información, como clientes registrados más de una vez.

Errores en la disponibilidad de paquetes, debido a la gestión manual del cupo.

Pérdida de datos financieros, como pagos no registrados correctamente.

Dificultades para realizar reportes sobre ventas, desempeño de empleados o ingresos mensuales.

Falta de trazabilidad, al no poder identificar qué empleado gestionó una determinada reserva.

Estos inconvenientes generan ineficiencias operativas, aumentan los tiempos de respuesta y pueden afectar directamente la calidad del servicio ofrecido al cliente. Además, limitan la capacidad de la empresa para tomar decisiones basadas en datos reales y actualizados.

Frente a este panorama, surge la necesidad de desarrollar una base de datos relacional que permita a la agencia automatizar sus procesos clave, garantizar la integridad de los datos, y facilitar consultas y reportes para mejorar la toma de decisiones.

#Descripción de tablas.

# Tabla: Clientes

## Descripción: Almacena la información de los clientes que utilizan los servicios de la agencia.

| Campo          | Tipo    | Descripción                         |
| :------------- | :------ | :---------------------------------- |
| id             | número  | numero de id del cliente            |
| nombre         | texto   | nombre del cliente                  |
| apellido       | texto   | apellido del cliente                |
| email          | texto   | mail del cliente                    |
| dni            | texto   | documento identidad del cliente     |
| fecha_registro | fecha   | fecha de registro del cliente       |
| nacionalidad   | inúmero | nacionalidad de reserva del cliente |

# Tabla: Reservas

## Descripción: Registra las reservas que los clientes hacen sobre los paquetes turísticos.

| Campo         | Tipo   | Descripción                               |
| :------------ | :----- | :---------------------------------------- |
| id            | número | id de la reserva realizada                |
| cliente_id    | número | id del cliente que realiza una reserva    |
| paquete_id    | número | id correspondiente al paquete reservado   |
| fecha_reserva | fecha  | fecha de la reserva                       |
| estado        | texto  | estado en el que se encuentra la reserva  |
| num_personas  | número | numero de personas que incluye la reserva |
| monto_total   | número | costo de la reserva                       |

Paquetes

| Campo           | Tipo   | Descripción                               |
| :-------------- | :----- | :---------------------------------------- |
| id              | número | id del paquete seleccionado               |
| nombre          | texto  | nombre del paquete                        |
| descripcion     | texto  | descripcion del paquete                   |
| destino         | texto  | destino del paquete                       |
| precio          | número | precio del paquete                        |
| fecha_inicio    | fecha  | fecha de inicio del paquete               |
| fecha_fin       | fecha  | fecha de finalizacion del paquete         |
| cupo_disponible | número | cupos disponibles del paquete             |
| hotel_id        | número | hotel que incluye el paquete seleccionado |
| vuelo_id        | número | vuelo que incluye el paquete seleccionado |

# Tabla: Vuelos

## Descripción: Guarda los vuelos disponibles que pueden formar parte de un paquete turístico.

| Campo        | Tipo   | Descripción                             |
| :----------- | :----- | :-------------------------------------- |
| id           | número | id que indentifica la reserva de aereos |
| aerolinea    | texto  | aerolinea a cargo de los aereos         |
| numero_vuelo | texto  | numero de vuelo                         |
| origen       | texto  | oirigen de salida del vuelo             |
| destino      | texto  | destino del vuelo                       |
| hora_salida  | fecha  | hora de salida del vuelo                |
| hora_llegada | fecha  | hora de llegada del vuelo               |

# Tabla: Hoteles

## Descripción: Almacena la información de hoteles disponibles para incluir en los paquetes.

| Campo       | Tipo   | Descripción                            |
| :---------- | :----- | :------------------------------------- |
| id          | número | id que indentifica el hotel a reservar |
| nombre      | texto  | nombre del hotel                       |
| direccion   | texto  | direccion del hotel                    |
| ciudad      | texto  | ciudad donde se encunetra el hotel     |
| pais        | texto  | pais donde se encuentra el hotel       |
| categoria   | número | categoria del hotel                    |
| telefono    | texto  | numero telefonico del hotel            |
| email       | texto  | email del hotel                        |
| sitio_web   | texto  | sitio web del hotel                    |
| descripcion | texto  | descripcion del hotel                  |

# Tabla: Pagos

## Descripción: Almacena los pagos realizados por las reservas.

| Campo       | Tipo   | Descripción                                                      |
| :---------- | :----- | :--------------------------------------------------------------- |
| id          | número | id del pago                                                      |
| reserva_id  | número | identifica que reserva se debe abonar                            |
| fecha_pago  | fecha  | documenta en que fecha se realizo el pago                        |
| monto       | número | documenta el monto que se abono                                  |
| metodo_pago | texto  | describe que metodo de pago se utilizo                           |
| estado_pago | texto  | describe en que estado se encuentra el pago (pagado o pendiente) |

# Tabla: Empleado

## Descripción: Almacena la información del personal de la agencia que gestiona las reservas.

| Campo              | Tipo   | Descripción                                           |
| :----------------- | :----- | :---------------------------------------------------- |
| id                 | número | id del empleado                                       |
| nombre             | texto  | nombre del empleado                                   |
| apellido           | texto  | apellido del empleado                                 |
| email              | texto  | email del empleado                                    |
| telefono           | texto  | número telefonico del empleado                        |
| puesto             | texto  | describe el puesto que el empleado ocupa              |
| fecha_contratacion | fecha  | exhibe la fecha en la cual el empleado fue contratado |
| salario            | número | exhibe el salario del empleado                        |

# Vistas:

# En esta sección se detallan las vistas creadas en el proyecto junto con su descripción.

# Nombre de la vista: vw_resumen_reservas

## Descripción:

esta vista fue diseñada para proporcionar una visión clara y simplificada de las reservas realizadas por los clientes. Muestra de forma directa la información básica de cada reserva, incluyendo el nombre del cliente, el paquete contratado, la fecha de la reserva, el número de personas incluidas, el monto total pagado y el estado actual de la reserva.

# Nombre de la vista: vw_paquetes_populares

# Descripción:

esta vista permite identificar cuáles son los paquetes turísticos más reservados por los clientes. Presenta un resumen ordenado de los paquetes junto con el número total de reservas asociadas a cada uno, proporcionando una herramienta clave para el análisis comercial y la toma de decisiones estratégicas.

# Nombre de la vista: vw_pagos_cliente

# Descripción:

esta vista tiene como finalidad resumir la información financiera de cada cliente en relación con los pagos realizados por sus reservas. Permite identificar cuántos pagos ha efectuado un cliente y cuál es el monto total que ha abonado, facilitando el análisis financiero y el seguimiento de comportamiento de compra.

# Nombre de la vista: vw_ingresos_empleado

# Descripción:

esta vista está diseñada para ofrecer un resumen del desempeño económico de cada empleado de la agencia de viajes. Muestra cuántas reservas ha gestionado cada empleado y cuál es el ingreso total generado por esas reservas. Esta vista es especialmente útil para evaluar la productividad del personal y tomar decisiones administrativas o de incentivos.

# Triggers:

# En esta sección se detallan los triggers creados en el proyecto junto con su descripción.

# Nombre del trigger: trg_insert_reservas

# Descripción:

Este trigger se activa antes de insertar un nuevo registro en la tabla reservas. Su propósito es asegurar que ciertos campos críticos tengan valores válidos, incluso si no fueron proporcionados explícitamente al momento de realizar la inserción.

# Nombre del trigger: trg_agregar_paquetes

# Descripción:

Este trigger tiene como finalidad replicar automáticamente los datos insertados en la tabla paquetes hacia otra tabla llamada nuevos_paquetes. Funciona como una copia de seguridad, auditoría o registro histórico de los paquetes turísticos agregados.

# Nombre del trigger: trg_actualizar_cupo_paquete

# Descripción:

El propósito de este trigger es actualizar automáticamente el cupo disponible de un paquete turístico cuando se realiza una nueva reserva. De esta forma, el sistema controla en tiempo real la disponibilidad de lugares para cada paquete.

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

| Campo          | Tipo   | Descripción                    |
| -------------- | ------ | ------------------------------ |
| id             | número | Número de ID del cliente       |
| nombre         | texto  | Nombre del cliente             |
| apellido       | texto  | Apellido del cliente           |
| email          | texto  | Correo electrónico del cliente |
| dni            | texto  | Documento de identidad         |
| fecha_registro | fecha  | Fecha de registro del cliente  |
| nacionalidad   | número | Nacionalidad del cliente       |

### Tabla: Reservas

| Campo         | Tipo   | Descripción                           |
| ------------- | ------ | ------------------------------------- |
| id            | número | ID de la reserva                      |
| cliente_id    | número | ID del cliente que realiza la reserva |
| paquete_id    | número | ID del paquete reservado              |
| fecha_reserva | fecha  | Fecha de la reserva                   |
| estado        | texto  | Estado de la reserva                  |
| num_personas  | número | Número de personas incluidas          |
| monto_total   | número | Costo total de la reserva             |

### Paquetes

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

| Campo        | Tipo   | Descripción           |
| ------------ | ------ | --------------------- |
| id           | número | ID del vuelo          |
| aerolinea    | texto  | Aerolínea responsable |
| numero_vuelo | texto  | Número de vuelo       |
| origen       | texto  | Origen del vuelo      |
| destino      | texto  | Destino del vuelo     |
| hora_salida  | fecha  | Hora de salida        |
| hora_llegada | fecha  | Hora de llegada       |

### Tabla: Hoteles

| Campo       | Tipo   | Descripción                  |
| ----------- | ------ | ---------------------------- |
| id          | número | ID del hotel                 |
| nombre      | texto  | Nombre del hotel             |
| direccion   | texto  | Dirección del hotel          |
| ciudad      | texto  | Ciudad del hotel             |
| pais        | texto  | País del hotel               |
| categoria   | número | Categoría del hotel          |
| telefono    | texto  | Teléfono del hotel           |
| email       | texto  | Correo electrónico del hotel |
| sitio_web   | texto  | Sitio web del hotel          |
| descripcion | texto  | Descripción del hotel        |

### Tabla: Pagos

| Campo       | Tipo   | Descripción                          |
| ----------- | ------ | ------------------------------------ |
| id          | número | ID del pago                          |
| reserva_id  | número | ID de la reserva asociada            |
| fecha_pago  | fecha  | Fecha en que se realizó el pago      |
| monto       | número | Monto abonado                        |
| metodo_pago | texto  | Método de pago utilizado             |
| estado_pago | texto  | Estado del pago (pagado o pendiente) |

### Tabla: Empleado

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
