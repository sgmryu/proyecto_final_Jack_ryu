USE chelas;
DELIMITER //
CREATE FUNCTION IF NOT EXISTS totalingresosportipo(tipo_id INT) 
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(ingresos) INTO total FROM venta WHERE tipo_id = tipo_id;
    RETURN total;
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION IF NOT EXISTS totalproduccionportipo(tipo_id INT) 
RETURNS INT
BEGIN
    DECLARE total INT;
    SELECT SUM(cantidad) INTO total FROM produccion WHERE tipo_id = tipo_id;
    RETURN total;
END //
DELIMITER ;
