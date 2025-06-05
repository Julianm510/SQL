-- Funcion creada para ingresar el ID del paquete y que refleje en pantalla cuantos cupos disponibles dispone el respectivo paquete.


DELIMITER //
CREATE FUNCTION cupos_disponible(paqueteId INT)
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
drop function cupo_disponible;
select * from paquetes;
SELECT cupos_disponible(3)