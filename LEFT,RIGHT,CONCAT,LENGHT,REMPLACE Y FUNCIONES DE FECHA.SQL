--LEFT muestra el contenido de izquierda a derecha dependiendo de cuantos caracteres quieres que muestra
--RIGHT muestra el contenido de derecha a izquierda dependiendo de cuantos caracteres quieres que muestra
--CONCAT concatena
--LENGHT cuenta cuantos caracteres contiene la consulta del campo 
--REMPLACE remplaza contenido 
--
--FUNCIONES DE TEXTO
--LEFT

SELECT LEFT('HOLA ESTE ES UN MENSAJE', 9) AS MENSAJE;

SELECT nombre, apellido FROM CLINICA.PACIENTE
WHERE LEFT (nombre, 1)='A';


--RIGHT

SELECT RIGHT ('HOLA ESTE E YB MENSAJE',7) AS MENSAJE;

SELECT nombre, apellido FROM CLINICA.PACIENTE
WHERE RIGHT (apellido,1)='Z';


--CONCAT

SELECT CONCAT ('El Paciente con ID: ', fk_idPaciente, ' Tiene un Peso de: ', peso, ' KG')
FROM CLIENTE.EXPEDIENTE_DIAGNOSTICO;


SELECT (nombre || ' ' || apellido) as NOMBRE_COMPLETO FROM CLINICA.PACIENTE;

--LENGTH(cuenta los caracteres del campo)
SELECT LENGTH ('HOLA ESTE ES UN MENSAJE');

SELECT CONCAT(nombre,' ',apellido) AS NOMBRE_PACIENTE, LENGTH(nombre ||'' || apellido) AS CANTIDAD_LETRAS
FROM CLINICA.PACIENTE;

--REMPLACE
SELECT REPLACE ('MENSAJX','X','E');

UPDATE CLIENTE.EXPEDIENTE SET tipodeSangre = REMPLACE (tipodeSangre,'B','O') WHERE tipodeSangre='NA' AND padeciminetoCro='NA';


--FUNCIONES DE FECHA Y HORA

SELECT NOW();


SELECT CURRENT_TIME;

SELECT LEFT(CAST(CURRENT_TIME AS VARCHAR(8)),8) AS HORA_ACTUAL;

SELECT CURRENT_DATE;

SELECT (NOW() + INTERVAL '1 DAY') AS TIEMPO_MAÑANA;

SELECT (NOW() + INTERVAL '1 HOUR') AS TIEMPO_MAÑANA;

SELECT TIMEOFDAY();

-----------DATE_PART
--CALCULA LA DIFERENCIA DE DIA,MES, AÑO O TODO LO ANTERIOR 

SELECT DATE_PART ('year','2019-01-01'::date) - DATE_PART ('year', '2011-01-01'::date) AS DIF_AÑO;

SELECT DATE_PART ('month','2011-10-01'::date) - DATE_PART ('month', '2011-02-01'::date) AS DIF_MES;

SELECT DATE_PART ('day','2011-10-10'::date) - DATE_PART ('day', '2011-10-01'::date) AS DIF_DIA;

SELECT DATE_PART ('hour','2011-10-10 15:00'::timetamp) - DATE_PART ('hour','2011-10-10 9:00'::date) AS DIF_HORA;

SELECT DATE_PART ('min','2011-10-10 15:40'::timetamp) - DATE_PART ('min','2011-10-10 15:00'::date) AS DIF_MIN;

SELECT CONCAT(DATE_PART ('sec','20-12-30 90:00:59'::timetamp - '2011-12-30 09:00:00'::timestamp),' Segundos')
AS DIF_SEG;