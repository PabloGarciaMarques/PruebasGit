
SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER $$
DROP FUNCTION IF EXISTS mayor$$
CREATE FUNCTION mayor( x INT, y INT, z INT)
RETURNS INT
BEGIN
DECLARE x INT;
DECLARE y INT;
DECLARE z INT;
DECLARE result INT;
            IF x>y AND x>z THEN SET result=x;
            ELSEIF x<y AND z<y THEN SET result=y;
            ELSEIF x<z AND y<z THEN SET result=z;
            END IF;
RETURN (result);
END$$

DELIMITER ;