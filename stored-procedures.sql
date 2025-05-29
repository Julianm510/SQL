-- procedimiento almacenado para obtener detalles de la reserva del cliente por ID

DELIMITER //
CREATE PROCEDURE obtener_reservas_por_cliente(IN clienteId INT)
BEGIN
    SELECT r.id, p.nombre AS paquete, r.fecha_reserva, r.estado, r.monto_total
    FROM reservas r
    JOIN paquetes p ON r.paquete_id = p.id
    WHERE r.cliente_id = clienteId;
END;//
DELIMITER ;

CALL obtener_reservas_por_cliente(5)

-- procedimiento almacenado para actualizar la reserva de un cliente

DELIMITER //

CREATE PROCEDURE actualizar_reserva_cliente (

    IN id_nuevo_paquete INT,
    IN clien_id INT,
    OUT p_estado VARCHAR(50)
)
BEGIN

    DECLARE cliente_existe INT;
    SET @resultado = '';


    SELECT COUNT(*) INTO cliente_existe
    FROM clientes
    WHERE id = clien_id;


o
    IF cliente_existe > 0 THEN
        UPDATE reservas
        SET paquete_id = id_nuevo_paquete
        WHERE id = clien_id;
	
        SET p_estado = 'Paquete actualizado';
    ELSE
        SET p_estado = 'Cliente no encontrado';
    END IF;
END //

DELIMITER ;

CALL actualizar_reserva_cliente (5,2,@resultado);
select @resultado;

DROP PROCEDURE IF EXISTS actualizar_reserva_cliente ;
