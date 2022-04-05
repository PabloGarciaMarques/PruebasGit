SET GLOBAL log_bin_trust_function_creators = 1;

delimiter $$

create function numEmpleados()
returns int
begin
	declare numEmpleados int;
    
    select count(*) into numEmpleados
    from empleados where Clave_Depto = p_empleado;
    
    return numEmpleados;
    
    end$$
    
    delimiter ; 
    select numEmpleados();