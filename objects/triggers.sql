USE chelas;
CREATE TRIGGER IF NOT EXISTS actualizarinventarioventa 
AFTER INSERT ON Ventas
FOR EACH ROW
CALL actualizarinventariodespuesventa(NEW.venta_id);

DELIMITER //
CREATE TRIGGER IF NOT EXISTS verificardisponibilidadpedido 
BEFORE INSERT ON Pedidos
FOR EACH ROW
BEGIN
    DECLARE disponible INT;
    SELECT cantidad INTO disponible FROM inventario WHERE tipo_id = NEW.tipo_id;
    IF disponible < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La cantidad solicitada no está disponible en el inventario';
    END IF;
END //
DELIMITER ;