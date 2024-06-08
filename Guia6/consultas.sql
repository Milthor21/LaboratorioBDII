-- GUIA 6

-- MOSTRAR LA LISTA DE LOS EMPLEADOS 
-- EXISTENTES, CON SU RESPECTIVO
-- DOMICILIO Y CARGO

SELECT emp.nombre, emp.apellidos, emp.DUI, emp.celular, 
dir.linea1, ciu.ciudad, est.estado, pa.pais, car.cargo

FROM empleado emp
inner join direcciones dir on emp.idDireccion = dir.idDireccion
inner join ciudad ciu on dir.idCiudad = ciu.idCiudad
inner join estado est on ciu.idEstado = est.idEstado
inner join pais pa on est.idPais = pa.idPais
inner join cargo car on emp.idCargo = car.idCargo;

-- consulta 2 Pasajero
-- Mostrar una lista de los pasajeros con los detalles de su respectivo vuelo, así 
-- como la ciudad de origen y de destino.


SELECT 
    Pas.nombre AS Nombre_Pasajero,
    Pas.apellidos AS Apellidos_Pasajero,
    Ori.Nombre AS Ciudad_Origen,
    Ori.codigoAeropuerto AS Codigo_Aeropuerto_Origen,
    Dest.Nombre AS Ciudad_Destino,
    Dest.codigoAeropuerto AS Codigo_Aeropuerto_Destino,
    Vuel.localizador AS Localizador_Vuelo,
    Vuel.numeroVuelo AS Numero_Vuelo
FROM 
    Pasajero Pas
INNER JOIN 
    Boleto Bol ON Pas.idPasajero = Bol.idPasajero

INNER JOIN 
    Vuelo Vuel ON Bol.idVuelo = Vuel.idVuelo
INNER JOIN 
    Aeropuerto Ori ON Vuel.idOrigen = Ori.idAeropuerto
INNER JOIN 
    Aeropuerto Dest ON Vuel.idDestino = Dest.idAeropuerto;

-- consulta 3 piloto
--  Mostrar una lista de los pilotos, con los detalles de su dirección de residencia, 
-- licencias, pasaportes, visados y el avión que operan.
