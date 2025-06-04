-- Este trigger actualiza los cupos de los respectivos paquetes que se van reservando a medida del tiempo.

DELIMITER //
CREATE TRIGGER actualizar_cupo_paquete
AFTER INSERT ON reservas
FOR EACH ROW
BEGIN
    UPDATE paquetes
    SET cupo_disponible = cupo_disponible - NEW.num_personas
    WHERE id = NEW.paquete_id;
END;//
DELIMITER ;


-- Este trigger muestra los nuevos paquetes de viajes agregados en la carta de la agencia de viajes.

DELIMITER //
CREATE TRIGGER agregar_paquetes
AFTER INSERT ON paquetes
FOR EACH ROW
BEGIN 
INSERT INTO nuevos_paquetes (id, nombre, descripcion, destino, precio, fecha_inicio, fecha_fin, cupo_disponible, hotel_id, vuelo_id)
 VALUES (NEW.id, NEW.nombre, NEW.descripcion, NEW.destino, NEW.precio, NEW.fecha_inicio, NEW.fecha_fin, NEW.cupo_disponible, NEW.hotel_id, NEW.vuelo_id);
 END; //
 DELIMITER ; 
 
 


