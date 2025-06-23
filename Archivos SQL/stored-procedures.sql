DELIMITER //
CREATE PROCEDURE sp_obtener_reservas_por_cliente(IN clienteId INT)
BEGIN
    SELECT r.id, p.nombre AS paquete, r.fecha_reserva, r.estado, r.monto_total
    FROM reservas r
    JOIN paquetes p ON r.paquete_id = p.id
    WHERE r.cliente_id = clienteId;
END;//
DELIMITER ;

CALL obtener_reservas_por_cliente(5)


DELIMITER //
CREATE PROCEDURE sp_actualizar_reserva_cliente (
    IN id_reserva INT,
    IN id_nuevo_paquete INT,
    OUT p_estado VARCHAR(50)
)
BEGIN
    DECLARE reserva_existe INT;
    DECLARE paquete_existe INT;

    -- Verificar que la reserva existe
    SELECT COUNT(*) INTO reserva_existe
    FROM reservas
    WHERE id = id_reserva;

    -- Verificar que el paquete existe
    SELECT COUNT(*) INTO paquete_existe
    FROM paquetes
    WHERE id = id_nuevo_paquete;

    IF reserva_existe = 0 THEN
        SET p_estado = 'Reserva no encontrada';
    ELSEIF paquete_existe = 0 THEN
        SET p_estado = 'Paquete no encontrado';
    ELSE
        UPDATE reservas
        SET paquete_id = id_nuevo_paquete
        WHERE id = id_reserva;

        SET p_estado = 'Paquete actualizado correctamente';
    END IF;
END;
//

DELIMITER ;

SET @mensaje = '';


CALL sp_actualizar_reserva_cliente(100, 1, @mensaje );


SELECT @mensaje AS resultado;

select * from reservas;

