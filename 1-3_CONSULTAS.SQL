SELECT * FROM Clinica.paciente;

SELECT * FROM Clinica.paciente WHERE ciudad='MEXICO';

SELECT * FROM Clinica.paciente WHERE sexo='H' AND ciudad='MEXICO';

SELECT * FROM Clinica.paciente WHERE sexo='M' OR ciudad='MEXICO';

SELECT * FROM Clinica.paciente WHERE ciudad IN ('MONTERREY','GUADALAJARA');

SELECT * FROM Clinica.paciente WHERE CIUDAD NOT IN ('MONTERREY','GUADALAJARA');

SELECT * FROM Clinica.paciente WHERE apellido LIKE '%Z';

SELECT * FROM Clinica.paciente WHERE apellido LIKE 'Z%';

SELECT * FROM Clinica.paciente WHERE apellido LIKE '%Z%';

---PARTE 2 

SELECT * FROM Clinica.agendar_cita WHERE (fechacita BETWEEN '2022-10-01' AND '2022-10-06') AND (turno='MATUTINO')

SELECT * FROM Clinica.expediente_diagnostico WHERE edad <= '30';

SELECT * FROM Clinica.expediente_diagnostico WHERE edad >= '30';

SELECT * FROM Clinica.expediente_diagnostico WHERE nivelpeso <> 'obecidad';

SELECT folio, fk_idespecialista, fk_idpaciente, fechacreacion 
FROM Clinica.expediente_diagnostico
WHERE nivelpeso<>'NORMAL' AND edad BETWEEN '30' AND '40';

---cont

SELECT COUNT(*) AS CANTIDAD_PACIENTES FROM Clinica.paciente;

SELECT COUNT(*) AS CANTIDAD_PACIENTES FROM Clinica.paciente WHERE estado ='MEXICO';

--SUM
SELECT SUM (folio) FROM Clinica.expediente_diagnostico;
--cast(edad as INT) convierte de char a int 
SELECT SUM(CAST(edad as INT)) AS suma_edad FROM Clinica.expediente_diagnostico;
SELECT SUM(CAST(pesos as INT)) AS suma_peso FROM Clinica.expediente_diagnostico;

--max   
SELECT MAX(pesos) as peso_maximo FROM Clinica.expediente_diagnostico;
SELECT MAX(edad) as edad_maximo FROM Clinica.expediente_diagnostico;

--max   
SELECT MIN(pesos) as peso_maximo FROM Clinica.expediente_diagnostico;
SELECT MIN(edad) as edad_maximo FROM Clinica.expediente_diagnostico;

--AVG (PROMEDIO)
SELECT * FROM Clinica.expediente_diagnostico;
SELECT AVG(CAST(pesos AS NUMERIC)) as PROMEDIO_PESO FROM Clinica.expediente_diagnostico;
SELECT AVG(CAST(edad AS INTEGER)) as edad FROM Clinica.expediente_diagnostico;

---CONBINAR FUNCIONES DE AGREGACION
SELECT MAX(edad) AS edad_max, MIN(edad) AS edad_min, SUM(CAST(edad as INT)) AS suma_edad,
AVG(CAST (edad AS INT)) as edad_promedio, count (*) as cantidad_diagnostico 
FROM Clinica.expediente_diagnostico;

SELECT fk_idespecialista FROM Clinica.expediente_diagnostico GROUP BY fk_idespecialista;

SELECT COUNT(nivelpeso) as cantidad_peso, nivelpeso FROM Clinica.expediente_diagnostico
GROUP BY nivelpeso;

SELECT fk_idpaciente, AVG(CAST(pesos as INT)) FROM Clinica.expediente_diagnostico
GROUP BY fk_idpaciente ORDER BY fk_idpaciente DESC;

select * FROM Clinica.expediente_diagnostico ORDER BY folio DESC;

select * FROM Clinica.expediente_diagnostico ORDER BY folio ASC;

----------------------------havien es lo mismo que where pero a having le puede agregar condiciones 
SELECT fk_idespecialista, count(fk_idespecialista) as citas_a_realizar 
from Clinica.expediente_diagnostico
GROUP BY fk_idespecialista
HAVING count (fk_idespecialista)>1;

select fk_idpaciente, AVG(CAST (pesos as INT)) AS PROMEDIO_PESO
FROM Clinica.expediente_diagnostico altura
GROUP BY fk_idpaciente, pesos
HAVING AVG(CAST (pesos AS INT)) >70;

--------distinct
SELECT DISTINCT fk_idpaciente
FROM Clinica.expediente_diagnostico ORDER BY fk_idpaciente;

SELECT fk_idpaciente
FROM Clinica.expediente_diagnostico ORDER BY fk_idpaciente;
------limit

SELECT * FROM Clinica.paciente LIMIT 5;

select * FROM Clinica.expediente_diagnostico ORDER BY folio DESC LIMIT 5;
