SET GLOBAL log_bin_trust_function_creators = 1;

delimiter $$
CREATE PROCEDURE procedimiento1()

BEGIN
	DECLARE num int;
	SET num = 5;
    
    
    SELECT num;
END $$

delimiter $$

call procedimiento1();
