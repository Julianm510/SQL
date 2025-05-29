create database agencia_viajes_muriel;
USE AGENCIA_VIAJES_MURIEL;


CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(20),
    dni VARCHAR(50),
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    nacionalidad VARCHAR(50)
);


CREATE TABLE paquetes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    destino VARCHAR(100),
    precio DECIMAL(10,2) NOT NULL,
    fecha_inicio DATE,
    fecha_fin DATE,
    cupo_disponible INT,
    hotel_id INT,
    vuelo_id INT,
    FOREIGN KEY (hotel_id) REFERENCES hoteles(id),
    FOREIGN KEY (vuelo_id) REFERENCES vuelos(id)
);


CREATE TABLE vuelos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aerolinea VARCHAR(100),
    numero_vuelo VARCHAR(20),
    origen VARCHAR(100),
    destino VARCHAR(100),
    hora_salida DATETIME,
    hora_llegada DATETIME
);


CREATE TABLE hoteles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion TEXT,
    ciudad VARCHAR(100),
    pais VARCHAR(100),
    categoria INT CHECK (categoria BETWEEN 1 AND 5),
    telefono VARCHAR(20),
    email VARCHAR(100),
    sitio_web VARCHAR(200),
    descripcion TEXT
);


CREATE TABLE reservas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    paquete_id INT NOT NULL,
    fecha_reserva DATETIME,
    estado VARCHAR(20) DEFAULT 'confirmada',
    num_personas INT,
    monto_total DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (paquete_id) REFERENCES paquetes(id)
);

CREATE TABLE pagos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    reserva_id INT NOT NULL,
    fecha_pago DATETIME,
    monto DECIMAL(10,2),
    metodo_pago VARCHAR(50), -- Efectivo, Tarjeta, Transferencia, etc.
    estado_pago VARCHAR(20) DEFAULT 'pendiente',
    FOREIGN KEY (reserva_id) REFERENCES reservas(id)
);
