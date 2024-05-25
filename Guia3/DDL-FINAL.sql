-- DDL de Aerolinea --
create database if not exists Aerolinea;
use Aerolinea;

create table Origen(
	idOrigen int primary key auto_increment,
    idAeropuerto int not null
);

create table Destino(
	idDestino int primary key auto_increment,
    idAeropuerto int not null
); 

create table Escala(
	idEscala int primary key auto_increment,
    idAeropuerto int not null
);

create table Regreso(
	idRegreso int primary key,
    idOrigen int not null,
    idEscala int not null,
    idDestion int not null,
    idFecha int not null
);

create table salida(
	idSalida int primary key auto_increment,
    idOrigen int not null,
    idEscala int not null,
    idDestion int not null,
    idFecha int not null
);

create table Fecha(
	idFecha int primary key auto_increment,
    fecha date not null
);

create table Reservacion(
	idReservacion int primary key auto_increment,
    estado varchar(25) not null,
    idPago int not null
);

create table Boleto(
	idBoleto int primary key auto_increment,
    idPasajero int not null,
    idReservacion int not null,
    idVuelo int not null,
    idAsiento int not null,
    idSalida int not null,
    idTarifa int not null
);

create table Asiento(
	idAsiento int primary key auto_increment,
    Columna char(2) not null,
    Numero char(5) not null,
    idClases int not null
);

create table Pago(
	idPago int primary key auto_increment,
    idMetodoPago int not null,
    EstadoPago varchar(25),
    TotalPago float not null
);

create table Tarifa(
	idTarifa int primary key auto_increment,
    tipoTarifa varchar(25),
    idTipoEquipaje int not null
);

create table MetodoPago(
	idMetodoPago int primary key auto_increment,
    Medoto varchar(25),
    idMillas int not null
);

create table Itinerario(
	idItinerario int primary key auto_increment,
    idSalida int not null,
    idRegreso int not null
);

create table Millas(
	idMillas int primary key auto_increment,
    Millas int not null
);

create table Aeropuerto(
	idAeropuerto int primary key auto_increment,
    codigoAeropuerto char(3),
    Nombre varchar(100),
    idDireccion int not null
);


-- Tablas de direccion

create table Pais(
	idPais char(2) primary key,
    pais varchar(25) not null
);

create table Estado(
	idEstado char(2) primary key,
    estado varchar(25) not null,
    idPais char(2) not null
);

create table Ciudad(
	idCiudad char(3) primary key,
    ciudad varchar(50) not null,
    idEstado char(2) not null
);

create table Direcciones(
	idDireccion int primary key auto_increment,
    linea1 varchar(100) not null,
    linea2 varchar(50),
    idCiudad char(5) not null,
    codigoPostal varchar(7)
);

create table Visa(
	idVisa int primary key auto_increment,
    numVisa varchar(15) not null,
    tipo varchar(15) not null,
    idPais char(2) not null
);

create table Sobrecargo(
	idSobrecargo int primary key auto_increment,
    licencia int not null,
    tipo varchar(15) not null,
    idEmpleado int not null
);

create table Piloto(
	idPiloto int primary key auto_increment,
    licencia int not null,
    tipo varchar(15) not null,
    idEmpleado int not null
);

create table Pasajero(
	idPasajero int primary key auto_increment,
    nombre varchar(45) not null,
    apellidos varchar(45) not null,
    DUI char(10) not null,
    pasaporte varchar(45) not null,
    genero char(2) not null,
    celular int not null,
    idDireccion int not null,
    numPasajeroFrecuente int
);
create table Cargo(
	idCargo int primary key auto_increment,
    cargo varchar(45) not null
);

create table Empleado(
	idEmpleado int primary key auto_increment,
    nombre varchar(45) not null,
    apellidos varchar(45) not null,
    DUI char(10) not null,
    idDireccion int not null,
    pasaporte varchar(45) not null,
    idVisa int not null,
    genero char(2) not null,
    celular int not null,
    idCargo int not null
);
create table Clases(
	idClases int primary key auto_increment,
    clase varchar(45) not null
);
create table Aeronave(
	idAeronave int primary key auto_increment,
    Modelo varchar(25) not null,
    envergadura float,
    capacidad int not null,
    marca varchar(25) not null,
    idClases int not null
);
create table TipoEquipaje(
	idTipoEquipaje int primary key auto_increment,
    TipoEquipaje varchar(25) not null,
    pesoMax float not null,
    precio float not null
    
);
create table Equipaje(
	idEquipaje int primary key auto_increment,
    idTipoEquipaje int not null,
    idPasajero int not null,
    peso float not null
);
create table Vuelo(
	idVuelo int primary key auto_increment,
    idOrigen int not null,
    idDestino int not null,
    localizador char(5) not null,
	numeroVuelo char(6) not null,
	idAeronave int not null
);

-- Tablas de Roles

create table roles (
	idRol int primary key auto_increment,
	rol varchar(50) not null
);

create table opciones(
	idOpcion int primary key auto_increment,
	opcion varchar(50) not null
);

create table asignacionRolesOpciones(
	idAsignacion int primary key auto_increment,
	idRol int not null,
	idOpcion int not null
);

create table usuarios(
	idUsuarios int primary key auto_increment,
	usuario varchar(50) not null,
	contrasenia varchar(50) not null,
	idRol int not null,
	idEmpleado int not null
	);
    
create table usuariosPasajero(
	idUsuariosPasajero int primary key auto_increment,
	usuario varchar(50) not null,
	contrasenia varchar(50) not null,
	idRol int not null,
	idPasajero int not null
	);


-- Llaves foraneas de direcciones
alter table Estado add foreign key (idPais) references Pais(idPais);
alter table Ciudad add foreign key (idEstado) references Estado(idEstado);
alter table Direcciones add foreign key (idCiudad) references Ciudad(idCiudad);
alter table Visa add foreign key (idPais) references Pais(idPais);
alter table Aeropuerto add foreign key (idDireccion) references Direcciones(idDireccion);

-- Llaves foraneas de empleados
alter table Empleado add foreign key (idCargo) references Cargo(idCargo);
alter table Empleado add foreign key (idDireccion) references Direcciones(idDireccion);
alter table Empleado add foreign key (idVisa) references Visa(idVisa);
alter table Piloto add foreign key (idEmpleado) references Empleado(idEmpleado);
alter table Sobrecargo add foreign key (idEmpleado) references Empleado(idEmpleado);

-- Llaves foraneas de Pasajeros
alter table Pasajero add foreign key (idDireccion) references Direcciones(idDireccion);

-- Llaves foraneas de Aeronave
alter table Aeronave add foreign key (idClases) references Clases(idClases);

-- Llaves foraneas de Equipaje
alter table Equipaje  add foreign key (idTipoEquipaje) references TipoEquipaje(idTipoEquipaje);
alter table Equipaje  add foreign key (idPasajero) references Pasajero(idPasajero);

-- Llaves foraneas de Vuelo
alter table Vuelo  add foreign key (idOrigen) references Origen(idOrigen);
alter table Vuelo  add foreign key (idDestino) references Destino(idDestino);
alter table Vuelo  add foreign key (idAeronave) references Aeronave(idAeronave);

alter table MetodoPago add foreign key (idMillas) references Millas(idMillas);

alter table Itinerario add foreign key (idSalida) references Salida(idSalida);
alter table Itinerario add foreign key (idRegreso) references Regreso(idRegreso);

alter table Tarifa add foreign key (idTipoEquipaje) references TipoEquipaje(idTipoEquipaje);

alter table Pago add foreign key (idMetodoPago) references MetodoPago(idMetodoPAgo);

alter table Reservacion add foreign key (idPago) references Pago(idPago);

alter table Boleto add foreign key (idPasajero) references Pasajero(idPasajero);
alter table Boleto add foreign key (idReservacion) references Reservacion(idReservacion);
alter table Boleto add foreign key (idVuelo) references Vuelo(idVuelo);
alter table Boleto add foreign key (idAsiento) references Asiento(idAsiento);
alter table Boleto add foreign key (idSalida) references Salida(idSalida);
alter table Boleto add foreign key (idTarifa) references Tarifa(idTarifa);

alter table Salida add foreign key (idOrigen) references Origen(idOrigen);
alter table Salida add foreign key (idEscala) references Escala(idEscala);
alter table Salida add foreign key (idDestion) references Destino(idDestino);
alter table Salida add foreign key (idFecha) references Fecha(idFecha);

alter table Regreso add foreign key (idOrigen) references Origen(idOrigen);
alter table Regreso add foreign key (idEscala) references Escala(idEscala);
alter table Regreso add foreign key (idDestion) references Destino(idDestino);
alter table Regreso add foreign key (idFecha) references Fecha(idFecha);

alter table Escala add foreign key (idAeropuerto) references Aeropuerto(idAeropuerto);

alter table Destino add foreign key (idAeropuerto) references Aeropuerto(idAeropuerto);

alter table Origen add foreign key (idAeropuerto) references Aeropuerto(idAeropuerto);

-- LLAVES ROLES Y USUARIOS

alter table asignacionRolesOpciones add foreign key (idRol) references roles(idRol);
alter table asignacionRolesOpciones add foreign key (idOpcion) references opciones(idOpcion);
alter table usuarios add foreign key (idRol) references roles(idRol);
alter table usuarios add foreign key (idEmpleado) references empleado(idEmpleado);
alter table usuariosPasajero add foreign key (idRol) references roles(idRol);
alter table usuariosPasajero add foreign key (idPasajero) references Pasajero(idPasajero);
