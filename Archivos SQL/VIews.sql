
CREATE VIEW vw_resumen_reservas AS
SELECT c.nombre AS cliente, p.nombre AS paquete, r.fecha_reserva, r.num_personas, r.monto_total, r.estado
FROM clientes c
JOIN reservas r ON c.id = r.cliente_id
JOIN paquetes p ON r.paquete_id = p.id;


CREATE VIEW vw_paquetes_populares AS
SELECT p.nombre, COUNT(r.id) AS total_reservas
FROM paquetes p
JOIN reservas r ON p.id = r.paquete_id
GROUP BY p.id
ORDER BY total_reservas DESC;



CREATE VIEW vw_pagos_cliente AS
SELECT 
    c.id AS cliente_id,
    CONCAT(c.nombre, ' ', c.apellido) AS cliente,
    c.email,
    COUNT(p.id) AS cantidad_pagos,
    SUM(p.monto) AS total_pagado
FROM clientes c
JOIN reservas r ON c.id = r.cliente_id
JOIN pagos p ON r.id = p.reserva_id
GROUP BY c.id;


CREATE VIEW vw_ingresos_empleado AS
SELECT 
    e.id AS empleado_id,
    CONCAT(e.nombre, ' ', e.apellido) AS empleado,
    e.puesto,
    COUNT(r.id) AS reservas_gestionadas,
    SUM(r.monto_total) AS total_ingresos_generados
FROM empleado e
LEFT JOIN reservas r ON e.id = r.empleado_id
GROUP BY e.id;


select * from vw_ingresos_empleado;

