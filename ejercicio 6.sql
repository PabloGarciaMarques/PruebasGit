SET GLOBAL log_bin_trust_function_creators = 1;


delimiter $$
CREATE function par (num INT) 
returns boolean

BEGIN

DECLARE x INT;

DECLARE result INT;
            IF MOD(x,2)=TRUE THEN SET result="par";
            ELSE SET result="impar";
            END IF;
RETURN (result);

    
END $$

delimiter $$
