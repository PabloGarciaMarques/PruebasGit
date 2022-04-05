SET GLOBAL log_bin_trust_function_creators = 1;

DELIMITER $$
DROP FUNCTION IF EXISTS ej5$$
CREATE FUNCTION semana( p INT)
RETURNS INT
BEGIN
DECLARE dia INT;
	IF dia="1" THEN SET dia="Lunes"; 
	ELSE IF dia="2" THEN SET dia="Martes"; 
	ELSEIF dia="3" THEN SET dia="Miercoles"; 
    ELSEIF dia="4" THEN SET dia="Jueves"; 
	ELSEIF dia="5" THEN SET dia="Viernes"; 
    ELSEIF dia="6" THEN SET dia="Sabado"; 
    ELSEIF dia="7" THEN SET dia="Domingo"; 
            END IF;
            END IF;
RETURN (dia);
END$$
DELIMITER ;