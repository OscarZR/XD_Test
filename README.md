# Prueba para Xaldigital
## Oscar David Zendejas Rangel

### Primera Prueba
Realizado en Python. Código ubicado dentro de la carpeta /prueba1/src está divido en dos funciones.
La llamada analizador es la que hace el análisis de datos para comparar de uno en uno los items que están contenidos en el json que proporciona el enlace.
La función main es la principal, en ella se hace la conexión se extrae la información cruda, la manda a analizar y finalmente imprime los resultados solicitados.

Las pruebas unitarias las enfoque en tres partes.
<ul>
    <li>Checar la integridad de la conexión (que no regrese algo vacío ni tampoco un None)</li>
    <li>Revisar la extracción de datos.</li>
    <li>Asegurar que el análisis se realiza sobre las 30 preguntas que vienen en el enlace usando como comparadores las resspuestas contestadas y las no contestadas. De esta forma sabemos que se mantiene la integridad del numero de datos.</li>
</ul>

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