SET GLOBAL log_bin_trust_function_creators = 1;

delimiter $$
DROP PROCEDURE IF EXISTS getfechaAlta$$
create procedure getfechaAlta ()
BEGIN

select min(Fecha_Alta)
from datospersonales
where ClaveEmpleado = (select ClaveEmpleado from empleados where Clave_Depto = (select Clave_Depto from departamento where NombreD = 'Contabilidad'));



end$$
CALL getfechaAlta (logistica);
delimiter ;
select Fecha_Alta from datospersonales where ClaveEmpleado in (select Clave_Depto from departamento where NombreD = 'Contabilidad');
