SET GLOBAL log_bin_trust_function_creators = 1;

delimiter $$
CREATE FUNCTION suma (num1 INT,num2 INT)

RETURNS INT 

BEGIN

	DECLARE suma INT;
	SET suma = num1 + num2;
	RETURN suma;
    
END $$

delimiter $$