-- DCL AEROLINEA

use aerolinea;

-- CREACION DE ROLES

create role if not exists 'SysAdmin';
create role if not exists 'Soporte';
create role if not exists 'Contabilidad';
create role if not exists 'Inventario';
create role if not exists 'RRHH';
create role if not exists 'Ingeniero';
create role if not exists 'Planificador';
create role if not exists 'Cliente';

-- Asignacion de privilegios a roles

-- Admin
grant all on aerolinea.* to 'SysAdmin';

-- Soporte
grant select, insert, update, delete on aerolinea.asiento to Soporte;
grant select, insert, update, delete on aerolinea.boleto to Soporte;
grant select, insert, update, delete on aerolinea.ciudad to Soporte;
grant select, insert, update, delete on aerolinea.clases to Soporte;
grant select, insert, update, delete on aerolinea.destino to Soporte;
grant select, insert, update, delete on aerolinea.direcciones to Soporte;
grant select, insert, update, delete on aerolinea.estado to Soporte;
grant select, insert, update, delete on aerolinea.fecha to Soporte;
grant select, insert, update, delete on aerolinea.itinerario to Soporte;
grant select, insert, update, delete on aerolinea.metodopago to Soporte;
grant select, insert, update, delete on aerolinea.millas to Soporte;
grant select, insert, update, delete on aerolinea.origen to Soporte;
grant select, insert, update, delete on aerolinea.pago to Soporte;
grant select, insert, update, delete on aerolinea.pais to Soporte;
grant select, insert, update, delete on aerolinea.pasajero to Soporte;
grant select, insert, update, delete on aerolinea.reservacion to Soporte;
grant select, insert, update, delete on aerolinea.salida to Soporte;
grant select, insert, update, delete on aerolinea.tarifa to Soporte;
grant select, insert, update, delete on aerolinea.tipoequipaje to Soporte;
grant select, insert, update, delete on aerolinea.visa to Soporte;
grant select, insert, update, delete on aerolinea.vuelo to Soporte;
grant select, insert, update, delete on aerolinea.usuariospasajero to Soporte;
grant select, insert, update, delete on aerolinea.usuarios to Soporte;

-- contabilidad
grant select, insert, update, delete on aerolinea.metodopago to Contabilidad;
grant select, insert, update, delete on aerolinea.millas to Contabilidad;
grant select, insert, update, delete on aerolinea.pago to Contabilidad;
grant select, insert, update, delete on aerolinea.tarifa to Contabilidad;

-- Inventario
grant select, insert, update, delete on aerolinea.equipaje to Inventario;
grant select, insert, update, delete on aerolinea.aeronave to Inventario;

-- RRHH
grant select, insert, update, delete on aerolinea.cargo to RRHH;
grant select, insert, update, delete on aerolinea.ciudad to RRHH;
grant select, insert, update, delete on aerolinea.direcciones to RRHH;
grant select, insert, update, delete on aerolinea.empleado to RRHH;
grant select, insert, update, delete on aerolinea.estado to RRHH;
grant select, insert, update, delete on aerolinea.pais to RRHH;
grant select, insert, update, delete on aerolinea.piloto to RRHH;
grant select, insert, update, delete on aerolinea.sobrecargo to RRHH;
grant select, insert, update, delete on aerolinea.visa to RRHH;

-- Ingeniero
grant select, insert, update, delete on aerolinea.clases to Ingeniero;
grant select, insert, update, delete on aerolinea.aeronave to Ingeniero;

-- Planificador
grant select, insert, update, delete on aerolinea.ciudad to Planificador;
grant select, insert, update, delete on aerolinea.destino to Planificador;
grant select, insert, update, delete on aerolinea.direcciones to Planificador;
grant select, insert, update, delete on aerolinea.escala to Planificador;
grant select, insert, update, delete on aerolinea.estado to Planificador;
grant select, insert, update, delete on aerolinea.origen to Planificador;
grant select, insert, update, delete on aerolinea.pais to Planificador;
grant select, insert, update, delete on aerolinea.regreso to Planificador;
grant select, insert, update, delete on aerolinea.salida to Planificador;
grant select, insert, update, delete on aerolinea.vuelo to Planificador;

-- cliente
grant select, insert, update, delete on aerolinea.asiento to Cliente;
grant select, insert, update, delete on aerolinea.boleto to Cliente;
grant select, insert, update, delete on aerolinea.ciudad to Cliente;
grant select, insert, update, delete on aerolinea.clases to Cliente;
grant select, insert, update, delete on aerolinea.destino to Cliente;
grant select, insert, update, delete on aerolinea.direcciones to Cliente;
grant select, insert, update, delete on aerolinea.estado to Cliente;
grant select, insert, update, delete on aerolinea.fecha to Cliente;
grant select, insert, update, delete on aerolinea.itinerario to Cliente;
grant select, insert, update, delete on aerolinea.metodopago to Cliente;
grant select, insert, update, delete on aerolinea.millas to Cliente;
grant select, insert, update, delete on aerolinea.origen to Cliente;
grant select, insert, update, delete on aerolinea.pago to Cliente;
grant select, insert, update, delete on aerolinea.pais to Cliente;
grant select, insert, update, delete on aerolinea.pasajero to Cliente;
grant select, insert, update, delete on aerolinea.reservacion to Cliente;
grant select, insert, update, delete on aerolinea.salida to Cliente;
grant select, insert, update, delete on aerolinea.tarifa to Cliente;
grant select, insert, update, delete on aerolinea.tipoequipaje to Cliente;
grant select, insert, update, delete on aerolinea.visa to Cliente;
grant select, insert, update, delete on aerolinea.vuelo to Cliente;
grant select, insert, update, delete on aerolinea.usuariospasajero to Cliente;

-- CREACION DE USUARIOS

create user if not exists 'Admin_Gil'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'Sop_gil'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'Cont_Fermin'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'Inven_Enzo'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'RRHH_Mario'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'ING_Jorge'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'PLAN_Tono'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;


-- CREACION DE USUARIOS PASAJEROS

create user if not exists 'roberto_Ore'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'Tatiana_Flor'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'Isaias_Garz'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'Milton_Mezqui'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

create user if not exists 'Samuel_Flor'@'localhost' 
identified with sha256_password by '1234' 
password expire interval 180 day;

-- VINCULAR USUARIOS A ROLES
grant SysAdmin TO 'Admin_Gil'@'localhost';
grant Soporte TO 'Sop_gil'@'localhost';
grant Contabilidad TO 'Cont_Fermin'@'localhost';
grant Inventario TO 'Inven_Enzo'@'localhost';
grant RRHH TO 'RRHH_Mario'@'localhost';
grant Ingeniero TO 'ING_Jorge'@'localhost';
grant Planificador TO 'PLAN_Tono'@'localhost';

-- VINCULAR USUARIOS-PASAJEROS A ROL CLIENTE
grant Cliente TO 'roberto_Ore'@'localhost';
grant Cliente TO 'Tatiana_Flor'@'localhost';
grant Cliente TO 'Isaias_Garz'@'localhost';
grant Cliente TO 'Milton_Mezqui'@'localhost';
grant Cliente TO 'Samuel_Flor'@'localhost';

-- Consultar roles y usuarios
select * from mysql.user;

-- CONSULTAR PERMISOS POR ROL Y USUARIOS
-- Roles
show grants for 'SysAdmin';
show grants for 'Soporte';
show grants for 'Contabilidad';
show grants for 'Inventario';
show grants for 'RRHH';
show grants for 'Ingeniero';
show grants for 'Planificador';
show grants for 'Cliente';
-- Usuarios
show grants for 'Admin_Gil'@'localhost';
show grants for 'Sop_gil'@'localhost';
show grants for 'Cont_Fermin'@'localhost';
show grants for 'Inven_Enzo'@'localhost';
show grants for 'RRHH_Mario'@'localhost';
show grants for 'ING_Jorge'@'localhost';
show grants for 'PLAN_Tono'@'localhost';
-- Usuarios Pasajeros
show grants for 'roberto_Ore'@'localhost';
show grants for 'Tatiana_Flor'@'localhost';
show grants for 'Isaias_Garz'@'localhost';
show grants for 'Milton_Mezqui'@'localhost';
show grants for 'Samuel_Flor'@'localhost';




