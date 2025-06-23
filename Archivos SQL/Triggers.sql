 DELIMITER //

CREATE TRIGGER trg_insert_reservas
BEFORE INSERT ON reservas
FOR EACH ROW
BEGIN
   
    IF NEW.monto_total IS NULL THEN
        SET NEW.monto_total = 0;
    END IF;

  
    IF NEW.estado IS NULL THEN
        SET NEW.estado = 'pendiente';
    END IF;

 
    IF NEW.fecha_reserva IS NULL THEN
        SET NEW.fecha_reserva = NOW();
    END IF;
END;
//

DELIMITER ;


DELIMITER //
CREATE TRIGGER trg_actualizar_cupo_paquete
AFTER INSERT ON reservas
FOR EACH ROW
BEGIN
    UPDATE paquetes
    SET cupo_disponible = cupo_disponible - NEW.num_personas
    WHERE id = NEW.paquete_id;
END;//
DELIMITER ;



DELIMITER //
CREATE TRIGGER trg_agregar_paquetes
AFTER INSERT ON paquetes
FOR EACH ROW
BEGIN 
INSERT INTO nuevos_paquetes (id, nombre, descripcion, destino, precio, fecha_inicio, fecha_fin, cupo_disponible, hotel_id, vuelo_id)
 VALUES (NEW.id, NEW.nombre, NEW.descripcion, NEW.destino, NEW.precio, NEW.fecha_inicio, NEW.fecha_fin, NEW.cupo_disponible, NEW.hotel_id, NEW.vuelo_id);
 END; //
 DELIMITER ; 
 



