-- procedimientos almacenados
use chelas;

-- Procedimiento 1: Actualizar el inventario después de una venta
DELIMITER //
CREATE PROCEDURE actualizarinventariodespuesventa(venta_id INT)
BEGIN
    DECLARE tipo_id INT;
    DECLARE cantidad INT;
    SELECT tipo_id, cantidad INTO tipo_id, cantidad FROM venta WHERE venta_id = venta_id;
    UPDATE inventario SET cantidad = cantidad - cantidad WHERE tipo_id = tipo_id;
END //
DELIMITER ;
-- Procedimiento 2: Registrar un nuevo pedido
DELIMITER //
CREATE PROCEDURE registrarpedido(tipo_id INT, cantidad INT, fecha_pedido DATE, fecha_entrega DATE)
BEGIN
    INSERT INTO pedido (tipo_id, cantidad, fecha_pedido, fecha_entrega) VALUES (tipo_id, cantidad, fecha_pedido, fecha_entrega);
END //
DELIMITER ;