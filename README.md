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
| id         | int(PK) | numero de id del cliente       |
| nombre     | varchar  | nombre del cliente             |
| apellido   | varchar  | apellido del cliente           |
| email      | varchar  | mail del cliente               |
| dni        | varchar  | documento identidad del cliente               |
| fecha_registro   |timestamp default current_timestamp    | fecha de registro del cliente|
| nacionalidad | int  | nacionalidad de reserva del cliente  |


# Reservas

| Campo      | Tipo    | Descripción                            |
| :--------- | :------ | :------------------------------------- |
| id | int(PK) | id de la reserva realizada             |
| cliente_id | int(FK) not null | id del cliente que realiza una reserva |
| paquete_id  | datetime | id correspondiente al paquete reservado              |
| fecha_reserva | int(FK) | id de reservacion           |
| estado| varchar(20) | estado en el que se encuentra la reserva         |
| num_personas   | int | numero de personas que incluye la reserva            |
| monto_total    | decimal(10,2) | costo de la reserva                    |


# Paquetes

| Campo      | Tipo    | Descripción                 |
| :--------- | :------ | :-------------------------- |
| id | int(PK) | id del paquete seleccionado |
| nombre |varchar(100) not null | nombre del paquete             |
|descripcion | text | descripcion del paquete                |
| destino   | varchar(100) | destino del paquete          |
| precio     | decimal(10,2) not null| precio del paquete          |
| fecha_inicio | date | fecha de inicio del paquete |
| fecha_fin | date | fecha de finalizacion del paquete |
| cupo_disponible | int | cupos disponibles del paquete |
| hotel_id | int(FK) | hotel que incluye el paquete seleccionado |
| vuelo_id | int(FK) | vuelo que incluye el paquete seleccionado |

# Vuelos

| Campo         | Tipo    | Descripción                             |
| :------------ | :------ | :-------------------------------------- |
| id    | int(PK) auto_increment | id que indentifica la reserva de aereos |
| aerolinea     | varchar(50) | aerolinea a cargo de los aereos         |
| numero_vuelo     | varchar(20) | numero de vuelo     |
| origen    | varchar(100) | oirigen de salida del vuelo|
| destino    | varchar(100) | destino del vuelo|
| hora_salida | datetime    | hora de salida del vuelo |
| hora_llegada | datetime    |hora de llegada del vuelo |

# Hoteles

| Campo         | Tipo    | Descripción                            |
| :------------ | :------ | :------------------------------------- |
| id     | int(PK) | id que indentifica el hotel a reservar |
| nombre        | varchar(100) | nombre del hotel|
| direccion     | text | direccion del hotel|
| ciudad    | varchar(100) | ciudad donde se encunetra el hotel|
| pais     | varchar(100) | pais donde se encuentra el hotel|
| categoria     | INT CHECK (categoria BETWEEN 1 AND 5) | categoria del hotel|
| telefono      | varchar(20)   | numero telefonico del hotel|
| email | varchar(100)    |   email del hotel   |
| sitio_web  | varchar(200)    | sitio web del hotel |
| descripcion  | text  | descripcion del hotel |


# Pagos

| Campo       | Tipo    | Descripción                                |
| :---------- | :------ | :----------------------------------------- |
| id    | int(PK) auto_increment | id del pago     |
| reserva_id  | int(FK) | identifica que reserva se debe abonar      |
| fecha_pago  | datetime | documenta en que fecha se realizo el pago  |
| monto | decimal(10,2)| documenta el monto que se abono            |
| metodo_pago | varchar(50) | describe que metodo de pago se utilizo |
| estado_pago  | varchar(20) | describe en que estado se encuentra el pago (pagado o pendiente) |


