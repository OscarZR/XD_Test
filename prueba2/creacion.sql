create table Aerolineas 
(
	ID_AEROLINEA int PRIMARY KEY,
	NOMBRE_AEROLINEA varchar(255)
);

create table Aeropuertos 
(
	ID_AEROPUERTO int PRIMARY KEY,
	NOMBRE_AEROPUERTO varchar(255)
);

create table Movimientos 
(
	ID_MOVIMIENTO int PRIMARY KEY,
	DESCRIPCION varchar(255)
);