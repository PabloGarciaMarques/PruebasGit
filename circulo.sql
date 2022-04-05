SET GLOBAL log_bin_trust_function_creators = 1;

delimiter $$
CREATE FUNCTION circulo(radio INT)
returns int 
begin 
Declare area int;
SET salida = radio*(3.14*3.14);

return (salida); 

END  $$

delimiter ;
SELECT circulo(6);