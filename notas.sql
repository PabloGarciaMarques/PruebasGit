SET GLOBAL log_bin_trust_function_creators = 1;

delimiter $$
CREATE FUNCTION notas(nota INT)
RETURNS CHAR (10)
BEGIN
DECLARE clas INT;
	IF clas="0-4.9" THEN SET dia="Insuficiente"; 
	ELSE IF clas="5-5.9" THEN SET dia="Suficiente"; 
    ELSEIF clas="6-6.9" THEN SET dia="Bien"; 
    ELSEIF clas="7-8.9" THEN SET dia="Notable"; 
    ELSEIF clas="9-10" THEN SET dia="Sobresaliente"; 
    END IF;
RETURN clas;
END IF;
END $$

delimiter ;
call notas (6);