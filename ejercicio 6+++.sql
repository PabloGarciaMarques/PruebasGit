SET GLOBAL log_bin_trust_function_creators = 1;


delimiter $$
CREATE function par (num INT) 
returns boolean

BEGIN

	DECLARE  salida VARCHAR(5) DEFAULT 'par';
	SET salida = 'El numero es' +salida;
	return salida;
	select mod(8, 2);
    if mod = 0 then 
    
END $$

delimiter $$
