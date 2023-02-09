-- Primera query
SELECT VECES, AEROPUERTO  FROM (
    SELECT a.nombre_aeropuerto AS AEROPUERTO, count(*) AS VECES
    FROM Vuelos v
    JOIN Aeropuertos a ON a.id_aeropuerto = v.ID_AEROPUERTO
    GROUP BY a.nombre_aeropuerto) WHERE VECES = (
        SELECT MAX(VECES) FROM (
            SELECT a.nombre_aeropuerto AS AEROPUERTO, count(*) AS VECES
            FROM Vuelos v
            JOIN Aeropuertos a ON a.id_aeropuerto = v.ID_AEROPUERTO
            GROUP BY a.nombre_aeropuerto)
    );

--Segunda query
SELECT VECES AS TOTAL, AEROLINEA FROM (
    SELECT a.nombre_aerolinea AS AEROLINEA, count(*) AS VECES
    FROM Vuelos v
    JOIN Aerolineas a ON a.id_aerolinea = v.ID_AEROLINEA
    GROUP BY a.nombre_aerolinea) WHERE VECES = (
        SELECT MAX(VECES) FROM (
            SELECT a.nombre_aerolinea AS AEROLINEA, count(*) AS VECES
            FROM Vuelos v
            JOIN Aerolineas a ON a.id_aerolinea = v.ID_AEROLINEA
            GROUP BY a.nombre_aerolinea)
    );

--Tercera query
SELECT MAX(VECES) AS TOTAL, DIA FROM (
    SELECT DIA, count(*) AS VECES
    FROM Vuelos
    GROUP BY DIA);

--Cuarta query
SELECT a.nombre_aerolinea AS AEROLINEA, DIA, COUNT(*) AS VECES
FROM Vuelos v
JOIN Aerolineas a ON a.id_aerolinea = v.ID_AEROLINEA
GROUP BY AEROLINEA, DIA
HAVING COUNT(*) > 2;