SET GLOBAL log_bin_trust_function_creators = 1;


delimiter $$
CREATE function suma (num1 INT,num2 INT) returns int

BEGIN

	DECLARE suma INT;
	SET suma = num1 + num2;
	return total;
    
END $$

delimiter $$

