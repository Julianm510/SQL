INSERT INTO clientes (nombre, apellido, email, telefono, dni,nacionalidad) VALUES
('Carlos', 'Pérez', 'carlos.perez1@example.com', '555-1001', 'DNI100001', 'Argentina'),
('María', 'Gómez', 'maria.gomez2@example.com', '555-1002', 'DNI100002', 'Chile'),
('Lucía', 'Ramírez', 'lucia.ramirez3@example.com', '555-1003', 'DNI100003', 'Perú'),
('Jorge', 'Santos', 'jorge.santos4@example.com', '555-1004', 'DNI100004', 'Uruguay'),
('Ana', 'Fernández', 'ana.fernandez5@example.com', '555-1005', 'DNI100005', 'México'),
('Miguel', 'Torres', 'miguel.torres6@example.com', '555-1006', 'DNI100006', 'Colombia'),
('Sofía', 'Mendoza', 'sofia.mendoza7@example.com', '555-1007', 'DNI100007', 'Argentina'),
('Diego', 'Lopez', 'diego.lopez8@example.com', '555-1008', 'DNI100008', 'Chile'),
('Valentina', 'Cruz', 'valentina.cruz9@example.com', '555-1009', 'DNI100009', 'Perú'),
('Pablo', 'Vargas', 'pablo.vargas10@example.com', '555-1010', 'DNI100010', 'Uruguay'),
('Elena', 'Suarez', 'elena.suarez11@example.com', '555-1011', 'DNI100011', 'México'),
('Ricardo', 'Ramirez', 'ricardo.ramirez12@example.com', '555-1012', 'DNI100012', 'Colombia'),
('Carla', 'Morales', 'carla.morales13@example.com', '555-1013', 'DNI100013', 'Argentina'),
('Andrés', 'Fernández', 'andres.fernandez14@example.com', '555-1014', 'DNI100014', 'Chile'),
('Gabriela', 'Ortega', 'gabriela.ortega15@example.com', '555-1015', 'DNI100015', 'Perú'),
('Luis', 'González', 'luis.gonzalez16@example.com', '555-1016', 'DNI100016', 'Uruguay'),
('Marina', 'Rojas', 'marina.rojas17@example.com', '555-1017', 'DNI100017', 'México'),
('Fernando', 'Silva', 'fernando.silva18@example.com', '555-1018', 'DNI100018', 'Colombia'),
('Laura', 'Castillo', 'laura.castillo19@example.com', '555-1019', 'DNI100019', 'Argentina'),
('Javier', 'Herrera', 'javier.herrera20@example.com', '555-1020', 'DNI100020', 'Chile');

INSERT INTO vuelos (aerolinea, numero_vuelo, origen, destino, hora_salida, hora_llegada) VALUES
('LATAM', 'LA123', 'Buenos Aires', 'Madrid', '2025-07-01 20:00:00', '2025-07-02 10:00:00'),
('Avianca', 'AV456', 'Bogotá', 'Cancún', '2025-07-10 09:00:00', '2025-07-10 13:00:00'),
('Iberia', 'IB789', 'Madrid', 'Buenos Aires', '2025-08-15 15:00:00', '2025-08-16 06:00:00'),
('Aeroméxico', 'AM101', 'Ciudad de México', 'Cancún', '2025-07-05 08:00:00', '2025-07-05 10:00:00'),
('Copa Airlines', 'CP202', 'Panamá', 'Lima', '2025-07-20 12:00:00', '2025-07-20 16:00:00'),
('LATAM', 'LA124', 'Santiago', 'Lima', '2025-07-12 07:00:00', '2025-07-12 09:00:00'),
('Avianca', 'AV457', 'Medellín', 'Cartagena', '2025-07-14 15:00:00', '2025-07-14 16:30:00'),
('Iberia', 'IB790', 'Barcelona', 'Buenos Aires', '2025-08-16 16:00:00', '2025-08-17 06:00:00'),
('Aeroméxico', 'AM102', 'Cancún', 'Ciudad de México', '2025-07-07 12:00:00', '2025-07-07 14:00:00'),
('Copa Airlines', 'CP203', 'Lima', 'Panamá', '2025-07-22 18:00:00', '2025-07-22 22:00:00'),
('LATAM', 'LA125', 'Buenos Aires', 'Santiago', '2025-07-03 09:00:00', '2025-07-03 10:30:00'),
('Avianca', 'AV458', 'Bogotá', 'Medellín', '2025-07-11 08:00:00', '2025-07-11 09:00:00'),
('Iberia', 'IB791', 'Madrid', 'Barcelona', '2025-08-17 07:00:00', '2025-08-17 08:30:00'),
('Aeroméxico', 'AM103', 'Ciudad de México', 'Guadalajara', '2025-07-09 10:00:00', '2025-07-09 11:30:00'),
('Copa Airlines', 'CP204', 'Panamá', 'San José', '2025-07-23 13:00:00', '2025-07-23 14:30:00'),
('LATAM', 'LA126', 'Santiago', 'Buenos Aires', '2025-07-04 18:00:00', '2025-07-04 19:30:00'),
('Avianca', 'AV459', 'Medellín', 'Bogotá', '2025-07-12 11:00:00', '2025-07-12 12:00:00'),
('Iberia', 'IB792', 'Barcelona', 'Madrid', '2025-08-18 20:00:00', '2025-08-18 21:30:00'),
('Aeroméxico', 'AM104', 'Guadalajara', 'Ciudad de México', '2025-07-10 15:00:00', '2025-07-10 16:30:00'),
('Copa Airlines', 'CP205', 'San José', 'Panamá', '2025-07-24 09:00:00', '2025-07-24 10:30:00');


INSERT INTO hoteles (nombre, direccion, ciudad, pais, categoria, telefono, email, sitio_web, descripcion) VALUES
('Hotel Sol y Playa', 'Av. del Mar 123', 'Cancún', 'México', 4, '998-555-1111', 'contacto@solyplaya.com', 'http://solyplaya.com', 'Hotel frente al mar con todo incluido.'),
('Madrid Palace', 'Calle Mayor 45', 'Madrid', 'España', 5, '915-555-2222', 'info@madridpalace.es', 'http://madridpalace.es', 'Hotel de lujo en el centro histórico de Madrid.'),
('Hotel Los Andes', 'Calle 10 #20-30', 'Lima', 'Perú', 3, '511-555-3333', 'contacto@hotellosandes.pe', 'http://hotellosandes.pe', 'Hotel cómodo y céntrico en Lima.'),
('Costa Dorada', 'Av. Pacífico 456', 'Cartagena', 'Colombia', 4, '574-555-4444', 'info@costadorada.co', 'http://costadorada.co', 'Hotel con vista al mar Caribe.'),
('Casa Real', 'Calle Real 12', 'Ciudad de México', 'México', 5, '555-555-5555', 'contacto@casareal.mx', 'http://casareal.mx', 'Hotel boutique de lujo en CDMX.'),
('Hotel Marina Bay', 'Av. Marina 101', 'Miami', 'USA', 4, '305-555-6666', 'contacto@marinabay.com', 'http://marinabay.com', 'Hotel con vistas a la bahía.'),
('Alhambra Suites', 'Calle Granada 55', 'Granada', 'España', 3, '958-555-7777', 'info@alhambrasuites.es', 'http://alhambrasuites.es', 'Hotel céntrico con encanto histórico.'),
('Hotel Patagonia', 'Av. Los Glaciares 222', 'El Calafate', 'Argentina', 4, '2902-555-8888', 'contacto@patagoniahotel.ar', 'http://patagoniahotel.ar', 'Hotel cerca del glaciar.'),
('Beach Resort', 'Playa Central 89', 'Punta Cana', 'República Dominicana', 5, '809-555-9999', 'info@beachresort.do', 'http://beachresort.com','hotel con la mejor calidad de punta cana' );

INSERT INTO paquetes (nombre, descripcion, destino, precio, fecha_inicio, fecha_fin, cupo_disponible, hotel_id, vuelo_id) VALUES
('Escapada a Cancún', 'Todo incluido 5 días', 'Cancún', 1200.00, '2025-07-10', '2025-07-15', 20, 1, 2),
('Descubre Madrid', 'Cultura y gastronomía', 'Madrid', 1800.00, '2025-07-01', '2025-07-08', 15, 2, 1),
('Aventura en Lima', 'City tour + museos', 'Lima', 800.00, '2025-08-05', '2025-08-09', 25, 3, 5),
('Vacaciones en Cartagena', 'Playa y sol', 'Cartagena', 1100.00, '2025-09-10', '2025-09-16', 18, 4, 7),
('Lujo en CDMX', 'Gastronomía y arte', 'Ciudad de México', 1500.00, '2025-07-20', '2025-07-25', 10, 5, 4),
('Relax en Punta Cana', 'Resort frente al mar', 'Punta Cana', 1900.00, '2025-07-15', '2025-07-20', 22, 9, 12),
('Ruta Andina', 'Tour por los Andes', 'El Calafate', 1000.00, '2025-09-01', '2025-09-06', 15, 8, 11),
('Caminos de Granada', 'Visita a La Alhambra', 'Granada', 1300.00, '2025-10-10', '2025-10-16', 20, 7, 13),
('Escapada a Santiago', 'Tour urbano', 'Santiago', 900.00, '2025-07-10', '2025-07-14', 30, 6, 6),
('Descanso en Lima', 'Hotel + City Tour', 'Lima', 850.00, '2025-08-15', '2025-08-19', 18, 3, 5),
('Maravillas de Panamá', 'Paquete caribeño', 'Panamá', 1350.00, '2025-08-25', '2025-08-30', 25, 10, 20),
('Escapada cultural a Bogotá', 'Museos y gastronomía', 'Bogotá', 950.00, '2025-09-10', '2025-09-15', 12, 11, 18),
('Tour por Medellín', 'Comuna 13 y Jardín', 'Medellín', 890.00, '2025-08-12', '2025-08-17', 14, 12, 17),
('Travesía por Santiago', 'Cerro San Cristóbal + viñedos', 'Santiago', 1250.00, '2025-09-05', '2025-09-10', 17, 6, 16),
('Viaje a San José', 'Volcanes y naturaleza', 'San José', 1050.00, '2025-08-22', '2025-08-27', 16, 13, 15),
('Ciudad colonial', 'Visita a Cusco', 'Cusco', 950.00, '2025-09-18', '2025-09-24', 13, 14, 14),
('Playas de Miami', 'Ocio y compras', 'Miami', 2000.00, '2025-10-01', '2025-10-07', 10, 6, 10),
('Capitales del sur', 'Buenos Aires y Montevideo', 'Buenos Aires', 1500.00, '2025-11-10', '2025-11-17', 15, 15, 3),
('Tour gastronómico México', 'CDMX y Oaxaca', 'Ciudad de México', 1450.00, '2025-08-01', '2025-08-07', 12, 5, 4),
('Escapada exprés', '3 días de relax', 'Lima', 650.00, '2025-09-05', '2025-09-08', 8, 3, 5);


INSERT INTO reservas (cliente_id, paquete_id, fecha_reserva, estado, num_personas, monto_total) VALUES
(1, 1, '2025-05-10', 'confirmada', 2, 2400.00),
(2, 2, '2025-05-11', 'pendiente', 1, 1800.00),
(3, 3, '2025-05-12', 'cancelada', 3, 2400.00),
(4, 4, '2025-05-13', 'confirmada', 2, 2200.00),
(5, 5, '2025-05-14', 'confirmada', 2, 3000.00),
(6, 6, '2025-05-15', 'confirmada', 1, 1900.00),
(7, 7, '2025-05-16', 'pendiente', 2, 2000.00),
(8, 8, '2025-05-17', 'confirmada', 1, 1300.00),
(9, 9, '2025-05-18', 'cancelada', 3, 2700.00),
(10, 10, '2025-05-19', 'confirmada', 2, 1700.00),
(11, 11, '2025-05-20', 'confirmada', 2, 2700.00),
(12, 12, '2025-05-21', 'pendiente', 1, 950.00),
(13, 13, '2025-05-22', 'confirmada', 2, 1780.00),
(14, 14, '2025-05-23', 'confirmada', 1, 1250.00),
(15, 15, '2025-05-24', 'cancelada', 2, 2100.00),
(16, 16, '2025-05-25', 'pendiente', 1, 950.00),
(17, 17, '2025-05-26', 'confirmada', 2, 4000.00),
(18, 18, '2025-05-27', 'confirmada', 1, 1450.00),
(19, 19, '2025-05-28', 'pendiente', 1, 1450.00),
(20, 20, '2025-05-29', 'confirmada', 1, 650.00);


INSERT INTO pagos (reserva_id, fecha_pago, monto, metodo_pago, estado_pago) VALUES
(1, '2025-05-11', 2400.00, 'Tarjeta', 'completado'),
(2, '2025-05-12', 900.00, 'Transferencia', 'pendiente'),
(3, '2025-05-13', 800.00, 'Efectivo', 'cancelado'),
(4, '2025-05-14', 1100.00, 'Tarjeta', 'completado'),
(5, '2025-05-15', 1500.00, 'Tarjeta', 'completado'),
(6, '2025-05-16', 1900.00, 'Efectivo', 'completado'),
(7, '2025-05-17', 2000.00, 'Transferencia', 'pendiente'),
(8, '2025-05-18', 1300.00, 'Efectivo', 'completado'),
(9, '2025-05-19', 2700.00, 'Tarjeta', 'cancelado'),
(10, '2025-05-20', 1700.00, 'Transferencia', 'completado'),
(11, '2025-05-21', 2700.00, 'Tarjeta', 'completado'),
(12, '2025-05-22', 950.00, 'Transferencia', 'pendiente'),
(13, '2025-05-23', 1780.00, 'Efectivo', 'completado'),
(14, '2025-05-24', 1250.00, 'Tarjeta', 'completado'),
(15, '2025-05-25', 1050.00, 'Transferencia', 'cancelado'),
(16, '2025-05-26', 950.00, 'Tarjeta', 'pendiente'),
(17, '2025-05-27', 2000.00, 'Transferencia', 'completado'),
(18, '2025-05-28', 1450.00, 'Tarjeta', 'completado'),
(19, '2025-05-29', 1450.00, 'Transferencia', 'pendiente'),
(20, '2025-05-30', 650.00, 'Efectivo', 'completado');

INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('Toni', 'Benet', 'eusebio47@serrano-zamora.com', '+34 710 565 149', 'Vendedor', '2022-10-26', 171723.93);
INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('Paco', 'Bauzà', 'heraclio54@portero.es', '+34744 415 875', 'Vendedor', '2021-06-12', 157015.15);
INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('Francisco', 'Luque', 'augustomartinez@ordonez.org', '+34719346630', 'Vendedor', '2023-04-08', 168087.56);
INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('Valentín', 'Azcona', 'rurrutia@vara.org', '+34 743771353', 'Vendedor', '2023-09-21', 187595.0);
INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('Rosalva', 'Abella', 'remigiocarreno@mosquera.com', '+34732093255', 'Atención al Cliente', '2023-11-01', 129829.59);
INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('Emelina', 'Ferrera', 'ealmazan@oliveras.com', '+34718944328', 'Gerente de Reservas', '2023-07-01', 158326.06);
INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('Judith', 'Quintero', 'julianavaldes@exposito.es', '+34886512275', 'Vendedor', '2023-06-03', 121658.41);
INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('Candelario', 'Oliva', 'cintiaalbero@yahoo.com', '+34 708 989 914', 'Gerente de Reservas', '2020-08-31', 160611.26);
INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('Carmina', 'Varela', 'muronuria@gmail.com', '+34703718165', 'Atención al Cliente', '2021-04-01', 145974.21);
INSERT INTO empleado (nombre, apellido, email, telefono, puesto, fecha_contratacion, salario) VALUES ('José', 'Barral', 'eliseo79@lillo-canales.com', '+34701 284 893', 'Atención al Cliente', '2022-11-07', 155448.96);
