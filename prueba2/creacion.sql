create table Aerolineas 
(
	ID_AEROLINEA int IDENTITY(1,1) PRIMARY KEY,
	NOMBRE_AEROLINEA varchar(255)
);

create table Aeropuertos 
(
	ID_AEROPUERTO int IDENTITY(1,1) PRIMARY KEY,
	NOMBRE_AEROPUERTO varchar(255)
);

create table Movimientos 
(
	ID_MOVIMIENTO int IDENTITY(1,1) PRIMARY KEY,
	DESCRIPCION varchar(255)
);