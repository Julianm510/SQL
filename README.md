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

Actualmente, muchas personas desean viajar, pero se enfrentan a dificultades como la falta de información confiable, precios elevados y experiencias poco personalizadas. Además, la saturación de ofertas en línea puede generar desconfianza e indecisión. Ante esta situación, surge la necesidad de una agencia de viajes que no solo facilite la planificación de viajes, sino que también ofrezca un servicio cercano, seguro y adaptado a las necesidades del cliente. Este proyecto responde a esa necesidad mediante la creación de una agencia que se enfoque en el diseño de experiencias únicas, accesibles y bien organizadas.

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
