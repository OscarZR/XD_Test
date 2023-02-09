-- Primera query
SELECT VECES AS TOTAL, AEROPUERTO, YEAR FROM (
    SELECT a.nombre_aeropuerto AS AEROPUERTO, count(*) AS VECES, CAST(SUBSTR(DIA, 1, 4) AS integer) AS YEAR
    FROM Vuelos v
    JOIN Aeropuertos a ON a.id_aeropuerto = v.ID_AEROPUERTO
    GROUP BY a.nombre_aeropuerto) WHERE VECES = (
        SELECT MAX(VECES) FROM (
            SELECT a.nombre_aeropuerto AS AEROPUERTO, count(*) AS VECES, CAST(SUBSTR(DIA, 1, 4) AS integer) AS YEAR
            FROM Vuelos v
            JOIN Aeropuertos a ON a.id_aeropuerto = v.ID_AEROPUERTO
            GROUP BY a.nombre_aeropuerto)
    );

--Segunda query
SELECT VECES AS TOTAL, AEROLINEA, YEAR FROM (
    SELECT a.nombre_aerolinea AS AEROLINEA, count(*) AS VECES, CAST(SUBSTR(DIA, 1, 4) AS integer) AS YEAR
    FROM Vuelos v
    JOIN Aerolineas a ON a.id_aerolinea = v.ID_AEROLINEA
    GROUP BY a.nombre_aerolinea) WHERE VECES = (
        SELECT MAX(VECES) FROM (
            SELECT a.nombre_aerolinea AS AEROLINEA, count(*) AS VECES, CAST(SUBSTR(DIA, 1, 4) AS integer) AS YEAR
            FROM Vuelos v
            JOIN Aerolineas a ON a.id_aerolinea = v.ID_AEROLINEA
            GROUP BY a.nombre_aerolinea)
    );

--Tercera query
SELECT MAX(VECES) AS TOTAL, DIA FROM (
    SELECT count(*) AS VECES,  CAST(SUBSTR(DIA, 6, 2) AS integer) AS DIA 
    FROM Vuelos
    GROUP BY DIA);

--Cuarta query
SELECT a.nombre_aerolinea AS AEROLINEA, DIA, COUNT(*) AS VECES
FROM Vuelos v
JOIN Aerolineas a ON a.id_aerolinea = v.ID_AEROLINEA
GROUP BY AEROLINEA, DIA
HAVING COUNT(*) > 2;