# Prueba para Xaldigital
## Oscar David Zendejas Rangel

### Primera Prueba
Realizado en Python. Código ubicado dentro de la carpeta /prueba1/src está divido en dos funciones.
La llamada analizador es la que hace el análisis de datos para comparar de uno en uno los items que están contenidos en el json que proporciona el enlace.
La función main es la principal, en ella se hace la conexión, se extrae la información cruda, la manda a analizar y finalmente imprime los resultados solicitados.

Las pruebas unitarias las enfoque en tres partes.
<ul>
    <li>Checar la integridad de la conexión (que no regrese algo vacío ni tampoco un None)</li>
    <li>Revisar la extracción de datos.</li>
    <li>Asegurar que el análisis se realiza sobre las 30 preguntas que vienen en el enlace usando como comparadores las respuestas contestadas y las no contestadas. De esta forma sabemos que se mantiene la integridad del numero de datos.</li>
</ul>

#### Como correrlo
Puede crearse un ambiente virtual, solo es necesario instalar las siguientes librerias.
<ul>
    <li>requests</li>
    <li>datetime</li>
    <li>pytest</li>
</ul>
De igual manera vienen especificadas las versiones en el archivo requirements.txt.
Dentro de la carpeta src ejecutar el archivo analisis.py e imprime lo siguiente (ejecución realizada 09/02/2023 18:44)
<ul>
    <li>Respuestas contestadas: 22    Respuestas no contestadas: 8</li>
    <li>La pregunta con menor vistas es la 5    con 17 vistas</li>
    <li>La pregunta mas vieja es la 26 con fecha 2009-12-16    y la mas actual es 3 con fecha 2023-02-09</li>
    <li>El owner con mayor reputacion tiene el id 465183    con reputacion 164331</li>
</ul>

Para las pruebas unitarias se tiene que ubicar en la carpeta tests y en terminal solo escribir pytest.

### Segunda Prueba
Todo lo realizado lo hice en un editor web para no entrar en conflictos de diferencias entre motores de SQL, en el enlace https://sqliteonline.com/ usando SQLite.
Los queries se encuentran en la carpeta /prueba2/. Lo subidividi en 4 archivos: creacion de las tablas, inserción de datos, creacion de tabla vuelos y obtencion de resultados.
Se puede copiar y pegar los queries en el editor online mencionado para obtener los resultados. De igual manera los anexo en este README.
<ul>
    <li>¿Cuál es el nombre aeropuerto que ha tenido mayor movimiento durante el año? Son dos, El benito Juarez y La Paz</li>
    <li>¿Cuál es el nombre aerolínea que ha realizado mayor número de vuelos durante el año? Son dos. Aeromar e Interjet.</li>
    <li>¿En qué día se han tenido mayor número de vuelos? El día 2</li>
    <li>¿Cuáles son las aerolíneas que tienen mas de 2 vuelos por día? Ninguna tiene MAS DE DOS vuelos al día</li>
</ul>