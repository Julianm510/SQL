# PROYECTO AGENCIA DE VIAJES

## Índice

- Descripción del proyecto.

- Objetivos.

- Situación problemática.

- Descripción de tablas.

## Descripción del Proyecto

El proyecto Agencia de Viajes se trata de una empresa la cual cuyo fin es la comercialización de
viajes, ya sea paquetes armados por la Agencia o a gusto personal del cliente, pudiendo elegir
las opciones que más le guste y convenga de acuerdo a los servicios que podemos ofrecerles.
El Proyecto debe contar con una base de datos para poder almacenar todos sus clientes con
sus respectivos datos. Los cuales podrán comprar desde paquetes de viajes ya armados por la
agencia como también poder armar sus viajes a elección con la carta de destinos, hoteles y
vuelos que brindamos, que también almacenamos en nuestra base de datos.

## Obetivos

- Diseñar y presentar una propuesta de agencia de viajes que ofrezca servicios turísticos innovadores, personalizados y accesibles, con el fin de fomentar el turismo local e internacional.
- Desarrollar un portafolio de paquetes turísticos atractivos y competitivos.

## Situación problemática.

Actualmente, muchas personas desean viajar, pero se enfrentan a dificultades como la falta de información confiable, precios elevados y experiencias poco personalizadas. Además, la saturación de ofertas en línea puede generar desconfianza e indecisión. Ante esta situación, surge la necesidad de una agencia de viajes que no solo facilite la planificación de viajes, sino que también ofrezca un servicio cercano, seguro y adaptado a las necesidades del cliente. Este proyecto responde a esa necesidad mediante la creación de una agencia que se enfoque en el diseño de experiencias únicas, accesibles y bien organizadas.

## Descripción de tablas.

# Clientes

| Campo      | Tipo     | Descripción                    |
| :--------- | :------- | :----------------------------- |
| id_cliente | int (PK) | numero de id del cliente       |
| nombre     | varchar  | nombre del cliente             |
| apellido   | varchar  | apellido del cliente           |
| telefono   | int      | numero de telefono del cliente |
| mail       | varchar  | mail del cliente               |
| id_reserva | int      | numero de reserva del cliente  |
| id_pago    | int      | numero de pago del cliente     |

# Reservas

| Campo      | Tipo    | Descripción                            |
| :--------- | :------ | :------------------------------------- |
| id_reserva | int(PK) | id de la reserva realizada             |
| id_cliente | int(FK) | id del cliente que realiza una reserva |
| id_aereo   | int(FK) | id de aereos reservados                |
| id_destino | int(FK) | id del destino reservado               |
| id_paquete | int(FK) | numero de reserva del paquete          |
| id_hotel   | int(FK) | id de reserva del hotel                |
| precio     | decimal | costo de la reserva                    |

# Destinos

| Campo        | Tipo    | Descripción                              |
| :----------- | :------ | :--------------------------------------- |
| id_destino   | int(PK) | id del destino                           |
| pais         | varchar | pais donde se encuentra el destino       |
| ciudad       | varchar | ciudad donde se encuentra el destino     |
| continente   | varchar | continente donde se encuentra el destino |
| zona_horaria | time    | zona horaria del destino                 |

# Paquetes

| Campo      | Tipo    | Descripción                 |
| :--------- | :------ | :-------------------------- |
| id_paquete | int(PK) | id del paquete seleccionado |
| id_destino | int(FK) | id del destino              |
| id_hotel   | int(FK) | id del hotel                |
| id_aereo   | int(FK) | id de los aereos            |
| precio     | decimal | precio del paquete          |

# Pagos

| Campo       | Tipo    | Descripción                                |
| :---------- | :------ | :----------------------------------------- |
| id_pago     | int(PK) | id del pago realizado por el cliente       |
| id_reserva  | int(FK) | identifica que reserva se debe abonar      |
| id_cliente  | int(FK) | identifica que cliente realizo el pago     |
| metodo_pago | int(FK) | describe con que metodo se realizo el pago |
| fecha_pago  | int(FK) | documenta en que fecha se realizo el pago  |
| monto_pago  | decimal | documenta el monto que se abono            |

# Hoteles

| Campo         | Tipo    | Descripción                            |
| :------------ | :------ | :------------------------------------- |
| id_hotel      | int(PK) | id que indentifica que hotel se reseva |
| nombre        | varchar | nombre del hotel                       |
| categoria     | varchar | categoria del hotel                    |
| direccion     | varchar | direccion del hotel                    |
| telefono      | int     | numero telefonico del hotel            |
| fecha_entrada | date    | fecha de ingreso al hotel              |
| fecha_salida  | date    | fecha de salida del hotel              |

# Aereos

| Campo         | Tipo    | Descripción                             |
| :------------ | :------ | :-------------------------------------- |
| id_aereo      | int(PK) | id que indentifica la reserva de aereos |
| aerolinea     | varchar | aerolinea a cargo de los aereos         |
| num_vuelo     | varchar | codigo de que identifica los aereos     |
| id_destino    | int(FK) | destino de los aereos                   |
| precio        | decimal | valor de los aereos                     |
| fecha_partida | date    | fecha de partida                        |
| fecha_regreso | date    | fecha de regreso                        |
