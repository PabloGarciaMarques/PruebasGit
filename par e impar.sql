SET GLOBAL log_bin_trust_function_creators = 1;


delimiter $$
CREATE function par (num INT) 
returns boolean

BEGIN

DECLARE result boolean;
            IF MOD(num,2) = 0 then set result="true";
            ELSE SET result="false";
            END IF;
RETURN (result);

    
END $$

delimiter $$
SELECT par (8);