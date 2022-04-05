SET GLOBAL log_bin_trust_function_creators = 1;

delimiter $$  
	
create procedure  getDNI (p_ClaveEmpleado varchar(5))

begin 
 
 declare DNIEmpleado varchar (9);
 
 select DNI into DNIEmpleado
 from datospersonales
 where ClaveEmpleado = p_ClaveEmpleado;
  
 select DNIEmpleado;
 
 end $$
 
 delimiter ;
 
 call getDNI('EMP01');