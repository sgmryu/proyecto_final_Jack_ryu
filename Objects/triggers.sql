-- disparadores
use chelas;

-- Trigger 1: Después de la inserción de una venta, actualizar el inventario
CREATE TRIGGER actualizarinventarioventa AFTER INSERT ON Ventas
FOR EACH ROW
BEGIN
    CALL actualizarinventariodespuesventa(NEW.venta_id);
END;

-- Trigger 2: Antes de la inserción de un pedido, verificar la disponibilidad en el inventario
CREATE TRIGGER verificardisponibilidadpedido BEFORE INSERT ON Pedidos
FOR EACH ROW
BEGIN
    DECLARE disponible INT;
    SELECT cantidad INTO disponible FROM inventario WHERE tipo_id = NEW.tipo_id;
    IF disponible < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'La cantidad solicitada no está disponible en el inventario';
    END IF;
END;
