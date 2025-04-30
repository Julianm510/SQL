DROP DATABASE IF EXISTS agencia_viajes;
CREATE DATABASE agencia_viajes;
USE agencia_viajes;

CREATE TABLE CLIENTES (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    telefono INT,
    apellido VARCHAR(100) NOT NULL,
    mail VARCHAR(100),
    id_reservar INT,
    id_pago INT
);

ALTER TABLE CLIENTES
ALTER COLUMN telefono VARCHAR(50);


CREATE TABLE RESERVAS (
id_reserva INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_cliente INT NOT NULL,
id_paquete INT NOT NULL,
id_aereo INT NOT NULL,
id_destino INT NOT NULL,
id_hotel INT NOT NULL,
precio DECIMAL NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente)
    

);
ALTER TABLE RESERVAS
ADD CONSTRAINT fk_RESERVAS_PAQUETES
FOREIGN KEY (id_paquete) REFERENCES PAQUETES(id_paquete);

ALTER TABLE RESERVAS
ADD CONSTRAINT fk_RESERVAS_AEREOS
FOREIGN KEY (id_aereo) REFERENCES AEREOS(id_aereo);


ALTER TABLE RESERVAS
ADD CONSTRAINT fk_RESERVAS_DESTINOS
FOREIGN KEY (id_destino) REFERENCES DESTINOS(id_destino);

ALTER TABLE RESERVAS
ADD CONSTRAINT fk_RESERVAS_HOTELES
FOREIGN KEY (id_hotel) REFERENCES HOTELES(id_hotel);
    
    
    CREATE TABLE PAGOS (
    id_pago INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_reserva INT NOT NULL,
    metodo_pago VARCHAR(50) NOT NULL,
    fecha_pago DATE NOT NULL,
    monto_pagado DECIMAL NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente),
    FOREIGN KEY (id_reserva) REFERENCES RESERVAS(id_reserva)
);


CREATE TABLE DESTINOS (
    id_destino INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    pais VARCHAR(100) NOT NULL,
    ciudad VARCHAR(100) NOT NULL,
    continente VARCHAR(100) NOT NULL,
    zona_horaria TIME
);
	

 CREATE TABLE AEREOS (
    id_aereo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    aerolinea VARCHAR(100) NOT NULL,
    num_vuelo VARCHAR(50) NOT NULL,
    id_destino INT NOT NULL,
    precio DECIMAL NOT NULL,
    fecha_partida DATETIME NOT NULL,
    fecha_regreso DATETIME NOT NULL,
    FOREIGN KEY (id_destino) REFERENCES DESTINOS(id_destino)
);


CREATE TABLE PAQUETES (
    id_paquete INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_destino INT NOT NULL,
    id_hotel INT NOT NULL,
	id_aereo INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_destino) REFERENCES DESTINOS(id_destino),
    FOREIGN KEY (id_hotel) REFERENCES HOTELES(id_hotel),
    FOREIGN KEY (id_aereo) REFERENCES AEREOS(id_aereo)
    
);


CREATE TABLE HOTELES (
    id_hotel INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    telefono INT NOT NULL,
    fecha_entrada DATE NOT NULL,
    fecha_salidad DATE NOT NULL
    
);

    
    