INSERT INTO Movimientos(ID_MOVIMIENTO,DESCRIPCION)
VALUES (1,'Salida'),
(2,'Llegada');

INSERT INTO Aerolineas(ID_AEROLINEA,NOMBRE_AEROLINEA)
VALUES (1,'Volaris'),
(2,'Aeromar'),
(3,'Interjet'),
(4,'Aeromexico');

INSERT INTO Aeropuertos(ID_AEROPUERTO,NOMBRE_AEROPUERTO)
VALUES (1,'Benito Juarez'),
(2,'Guanajuato'),
(3,'La Paz'),
(4,'Oaxaca');

SELECT * FROM Movimientos;
SELECT * FROM Aerolineas;
SELECT * FROM Aeropuertos;