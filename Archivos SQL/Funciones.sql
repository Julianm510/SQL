DELIMITER //
CREATE FUNCTION fn_cupos_disponibles(paqueteId INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cupo INT;
    SELECT cupo_disponible INTO cupo
    FROM paquetes
    WHERE id = paqueteId;
    RETURN cupo;
END;
//
DELIMITER ;


DELIMITER //
CREATE FUNCTION fn_total_reservas_cliente(clienteId INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM reservas
    WHERE cliente_id = clienteId;
    RETURN total;
END;
//
DELIMITER ;

DELIMITER //
CREATE FUNCTION fn_empleado_reservas(empleadoId INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM reservas
    WHERE empleado_id = empleadoId;
    RETURN total;
END;
//
DELIMITER ;

DELIMITER //
CREATE FUNCTION fn_cupos_ocupados_paquete(paqueteId INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE ocupados INT;
    SELECT IFNULL(SUM(num_personas), 0) INTO ocupados
    FROM reservas
    WHERE paquete_id = paqueteId AND estado = 'confirmada';
    RETURN ocupados;
END;
//
DELIMITER ;


SELECT  fn_cupos_ocupados_paquete(1);
SELECT fn_empleado_reservas(5)
