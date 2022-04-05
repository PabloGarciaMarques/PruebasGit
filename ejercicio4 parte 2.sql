delimiter $$

create function numEmpleados()
returns int
begin

	declare numEmpleados int;
    
    select count(*) into numEmpleados from 
    empleados where Clave_Depto = 1;
    
    return numEmpleados;
    
    
end$$
    
    delimiter ; 
    
    select numEmpleados();