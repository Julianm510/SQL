-- VISTA PARA PODER CHEQUEAR LOS RESUMENES DE LAS RESERVAS.
CREATE VIEW vista_resumen_reservas AS
SELECT c.nombre AS cliente, p.nombre AS paquete, r.fecha_reserva, r.num_personas, r.monto_total
FROM clientes c
JOIN reservas r ON c.id = r.cliente_id
JOIN paquetes p ON r.paquete_id = p.id;

-- ESTA VISTA RETORNA UNA LISTA CON LOS PAQUETES MAS POPULARES QUE ELIGEN LOS CLIENTES.
CREATE VIEW v_paquetes_populares AS
SELECT p.nombre, COUNT(r.id) AS total_reservas
FROM paquetes p
JOIN reservas r ON p.id = r.paquete_id
GROUP BY p.id
ORDER BY total_reservas DESC;

