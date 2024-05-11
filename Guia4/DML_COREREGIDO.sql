-- Tablas de millas
insert into millas(idMillas, Millas) values
-- idMillas, Millas
	('1', '10000'),
	('2', '15000'),
	('3', '45000'),
	('4', '17000'),
	('5', '5000');

-- Tablas de aeropuerto
insert into aeropuerto(idAeropuerto, codigoAeropuerto, Nombre, idDireccion) values
	('1', 'LAX', 'Los Angeles International Airport', '1'),
	('2', 'ONT', 'Ontario International Airport', '2'),
	('3', 'SAL', 'Aeropuerto internacional de El Salvador', '3'),
	('4', 'TYO', 'Tokio International Airport ', '5'),
	('5', 'SDQ', 'Aeropuerto internacional Las Americas', '4');

-- Tablas de fecha
insert into fecha (idFecha, fecha) values
-- En MySQL, las fechas deben estar en el formato 'YYYY-MM-DD'
	('1','2024-02-01'),
	('2','2024-02-15'),
	('3','2024-03-11'),
	('4','2024-03-25'),
	('5','2024-04-01');
    
-- Tablas de tipoEquipaje
insert into tipoequipaje (idTipoEquipaje, TipoEquipaje, pesoMax, precio) values
-- idTipoEquipaje, TipoEquipaje, pesoMax (en lbs), precio (en Dolares $)
	('1', 'ObjetoPersonal', '10', '0' ),
	('2', 'MaletaMano', '40', '40'),
	('3', 'MaletaDocumentada', '55', '70'),
	('4', '1erDocumentadaExtra', '55', '100'),
	('5', '2daDocumentadaExtra', '55', '150');
    
-- Tablas de asiento
insert into asiento(idAsiento, Columna, Numero, idClases) values
	('1', 'A', '1', '1'),
	('2', 'B', '12', '1'),
	('3', 'C', '14', '1'),
	('4', 'D', '20', '2'),
	('5', 'E', '24', '2');
    
-- Tablas de metodopago
insert into metodopago(idMetodoPago, Medoto, idMillas) values
	('1', 'Cash', '1'),
	('2', 'DebitCard', '4'),
	('3', 'CreditCard', '5'),
	('4', 'Transfer', '2'),
	('5', 'Millas', '3');
  
-- Tablas de pago
insert into pago(idPago, idMetodoPago, EstadoPago, TotalPago) values
	('1', '1', 'Completado', '200.01'),
	('2', '1', 'Completado', '350.46'),
	('3', '3', 'Pendiente', '475.85'),
	('4', '3', 'Completado', '280.20'),
	('5', '2', 'Pendiente', '769.25');

-- Tablas de escala
insert into escala(idEscala, idAeropuerto) values
	('1', '1'),
	('2', '4'),
	('3', '5'),
	('4', '2'),
	('5', '3');
    
-- Tablas de origen
insert into origen(idOrigen, idAeropuerto) values
	('1', '1'),
	('2', '4'),
	('3', '5'),
	('4', '2'),
	('5', '3');
    
-- Tablas de aeronave
insert into aeronave(idAeronave, Modelo, envergadura, capacidad, marca, idClases) values
	('1', 'A320neo', '358', '186', 'Airbus', '1'),
	('2', '737 MAX', '378', '204', 'Boeing', '2'),
	('3', 'C919', '601', ' 168', 'Comac', '2'),
	('4', 'E195-E2', '351', '132', 'Embraer', '2'),
	('5', 'A350 XWB', '648', '440', 'Airbus', '4');

-- Tablas de destino
insert into destino (idDestino,idAeropuerto)
values 
	('1', '4'),
	('2', '3'),
	('3', '2'),
	('4', '5'),
	('5', '1');
    
-- Tablas de clases
insert into clases (clase)
values
	('Primera Clase'),
    ('Ejecutiva'),
    ('Premiun'),
    ('Turista'),
    ('Preferente');

-- Tablas de reservacion
insert into reservacion (estado, idPago)
values
	('Pendiente','1'),
    ('Completado','2'),
    ('Cancelado','3'),
    ('Pendiente','4'),
    ('Cancelado','5');
    
-- Tablas de salida
insert into salida (idSalida, idOrigen, idEscala, idDestion, idFecha)
values
	('1','1','3','5','1'),
    ('2','2','4','4','2'),
    ('3','3','1','2','3'),
    ('4','4','5','3','4'),
    ('5','5','2','4','5');

-- Tablas de regreso
insert into regreso (idRegreso, idOrigen, idEscala, idDestion, idFecha)
values
	('1','1','1','1','1'),
    ('2','2','2','2','2'),
    ('3','3','3','3','3'),
    ('4','4','4','4','4'),
    ('5','5','5','5','5');

-- Tablas de itinerario
insert into itinerario (idItinerario, idSalida, idRegreso)
values
	('1','1','4'),
    ('2','2','5'),
    ('3','4','2'),
    ('4','4','1'),
    ('5','5','3');
    
-- Tablas de vuelo
insert into vuelo (idVuelo,idOrigen, idDestino, localizador, numeroVuelo, idAeronave)
values
	('1','4','1','IB665','23','1'),
    ('2','1','2','IB123','24','2'),
    ('3','1','3','IB345','22','3'),
    ('4','1','4','IB567','2','4'),
    ('5','1','5','IB890','3','5');
   
-- Tablas de pasajero
insert into pasajero(idPasajero,nombre, apellidos, DUI, pasaporte, genero, celular, idDireccion, numPasajeroFrecuente)
values
	('1','Roberto', 'Lopez Orellana','00456789-9','B123456789','M','72103456','1','1'),
    ('2','Tatiana', 'Torres Flores','0036589-8','B234556789','F','71459087','2','25'),
    ('3','Isaias', 'Garzona Perez','03057689-8','B567891223','M','71435678','3','35'),
    ('4','Milton', 'Mezquita Barahona','00365678-0','B784556789','M','74459087','4','33'),
    ('5','Samuel', 'Florez Guevara','56776589-8','B098765432','M','74534456','5','6' );

-- Tablas de tarifa
insert into tarifa(tipoTarifa, idTipoEquipaje)
values
	('XS','1'),
    ('S','2'),
    ('M','3'),
    ('L','4'),
    ('XXL','5');

-- Tablas de empleado    
insert into empleado(nombre, apellidos, DUI, idDireccion, pasaporte, idVisa, genero, celular, idCargo)
values
	('Gilberto', 'Menendez','06056367-9','1','B123456787','1','M','72290987','8'),
	('Augusto', 'Ramirez','06056333-9','2','B121156787','1','M','79871234','1'),
    ('Genesis', 'Pereira','02356367-1','3','B123423455','1','F','72290447','2'),
	('Fermin', 'Tarso','06053434-3','4','B121152287','1','M','71231234','3'),
	('Enzo', 'Martinez','06056367-4','2','B156756787','1','M','76771234','4'),
    ('Mario', 'Menendez','06786367-9','1','B123456457','1','M','72290987','9'),
	('jorge', 'Ramirez','06476333-9','2','B121156477','1','M','79871124','9'),
    ('tono', 'Pereira','02156367-1','3','B123423365','1','M','72292347','9'),
	('Tana', 'Tarso','06055234-3','4','B121152587','1','M','71231474','9'),
	('Juan', 'Martinez','06073367-4','2','B156746787','1','M','76743234','9');
    
-- Tablas de boleto
insert into boleto (idBoleto, idPasajero, idReservacion, idVuelo, idAsiento, idSalida, idTarifa)
values
	('1','2','3','3','1','3','3'),
    ('2','3','4','3','1','1','3'),
    ('3','4','5','2','2','4','3'),
    ('4','5','3','1','5','1','3'),
    ('5','1','4','2','3','2','3');

-- Tablas de sobrecargo
insert into sobrecargo(idSobrecargo, licencia, tipo, idEmpleado) values
	('1', '0044078', 'A', '1'),
	('2', '2007785', 'B', '2'),
	('3', '0078524', 'A', '4'),
	('4', '0002541', 'B', '5'),
	('5', '0035001', 'B', '3');
    
-- Tablas de piloto
insert into piloto(idPiloto, licencia, tipo, idEmpleado) values
	('1', '7040078', 'A', '6'),
	('2', '5007785', 'B', '7'),
	('3', '5270024', 'A', '8'),
	('4', '8002541', 'B', '9'),
	('5', '7535001', 'B', '10'); 
    
-- Tablas de equipaje
insert into equipaje(idEquipaje, idTipoEquipaje, idPasajero, Peso) values
	('1', '1', '1', '8.01'),
	('2', '1', '4', '45.64'),
	('3', '3', '3', '50.85'),
	('4', '3', '5', '55.00'),
	('5', '2', '2', '28.50');

-- Tablas de pais
insert into pais(idPais, pais)
values
	('1','El Salvador'),
    ('2','Estados Unidos'),
    ('3','Colombia'),
    ('4','Argentina'),
    ('5','Canada');

-- Tablas de estado
insert into estado(idEstado, estado, idPais)
values
	('1','Sonsonate','1'),
    ('2','California','2'),
    ('3','Medellin','3'),
    ('4','La Plata','4'),
    ('5','Toronto','5');
    
-- Tablas de ciudad
insert into ciudad(idCiudad, ciudad, idEstado)
values
	('1','San Salvador','1'),
    ('2','New York','2'),
    ('3','Bogota','3'),
    ('4','Buenos Aires','4'),
    ('5','Toronto','5');
    
-- Tablas de cargo
insert into cargo(cargo)
values
	('SysAdmin'),
    ('CEO'),
    ('Contabilidad'),
    ('Inventario'),
    ('RRHH'),
    ('Ingeniero'),
    ('Planificador'),
    ('Ejecutivo'),
    ('Piloto'),
    ('Sobrecargo');

-- Tablas de direcciones
insert into direcciones(linea1, idCiudad, codigoPostal)
values
	('Colonia santa lucia casa 5','1','01116'),
    ('30, 150 East 58th St, Planta 30, New York, NY 10155','2','10155'),
    ('Cl. 59 #56 - 63, Bogotá, Colombia','3','110911'),
    ('Zona Rural, B6439 Laguna Alsina, Provincia de Buenos Aires, Argentina','4','6439'),
    ('8605 Nelson Ave, Burnaby, BC V5J 3G2, Canadá','5','7690');
    
-- Tablas de visa
insert into visa(numVisa, tipo, idPais)
values
	('123456789011111','Trabajo','1'),
    ('123455432122222','Estudiante','2'),
    ('098765432133333','Turismo','3'),
    ('234567890133333','Negocios','4'),
    ('456789012344444','Transito','5');
    



