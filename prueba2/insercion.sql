INSERT INTO Movimientos(id_movimiento,descripcion)
VALUES (1,'Salida'),
(2,'Llegada');

INSERT INTO Aerolineas(id_aerolinea,nombre_aerolinea)
VALUES (1,'Volaris'),
(2,'Aeromar'),
(3,'Interjet'),
(4,'Aeromexico');

INSERT INTO Aeropuertos(id_aeropuerto,nombre_aeropuerto)
VALUES (1,'Benito Juarez'),
(2,'Guanajuato'),
(3,'La Paz'),
(4,'Oaxaca');

SELECT * FROM Movimientos;
SELECT * FROM Aerolineas;
SELECT * FROM Aeropuertos;