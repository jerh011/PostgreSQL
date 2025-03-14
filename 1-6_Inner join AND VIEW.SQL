--inner join
SELECT * FROM CLINICA.paciente  AS pas
INNER JOIN CLINICA.expediente as ex
ON pas.pk_idpaciente=ex.pk_idpaciente
WHERE pas.pk_idpaciente='P-0004';
--left join
INSERT INTO CLINICA.PACIENTE VALUES 
('P-0021', 'DANIEL', 'CARMONA', 'M', '1998-12-07', 'MEXICO', 'MEXICO', '551234567')

SELECT * FROM CLINICA.paciente  AS pas
LEFT JOIN CLINICA.expediente as ex
ON pas.pk_idpaciente=ex.pk_idpaciente;

--right join
SELECT * FROM CLINICA.paciente  AS pas
RIGHT JOIN CLINICA.expediente as ex
ON pas.pk_idpaciente=ex.pk_idpaciente;


--join anidado
SELECT * FROM CLINICA.PACIENTE 
INNER JOIN CLINICA.CITA 
ON PACIENTE.pk_idpaciente=CITA.fk_idpaciente
INNER JOIN CLINICA.AGENDAR_CITA 
ON CLINICA.CITA.pk_idcita=AGENDAR_CITA.fk_idcita
INNER JOIN CLINICA.ESPECIALISTA 
ON CLINICA.AGENDAR_CITA.fk_idespecialista =ESPECIALISTA.pk_idespecialista
INNER JOIN CLINICA.EXPEDIENTE_DIAGNOSTICO 
ON CLINICA.ESPECIALISTA.pk_idespecialista=EXPEDIENTE_DIAGNOSTICO.fk_idespecialista
INNER JOIN CLINICA.EXPEDIENTE
ON CLINICA.EXPEDIENTE_DIAGNOSTICO.fk_idpaciente=EXPEDIENTE.pk_idpaciente
WHERE CLINICA.PACIENTE.pk_idpaciente='P-0001';



--inner join
SELECT * FROM CLINICA.paciente  AS pas
INNER JOIN CLINICA.expediente as ex
ON pas.pk_idpaciente=ex.pk_idpaciente
WHERE pas.pk_idpaciente='P-0004';
--left join
INSERT INTO CLINICA.PACIENTE VALUES 
('P-0021', 'DANIEL', 'CARMONA', 'M', '1998-12-07', 'MEXICO', 'MEXICO', '551234567')

SELECT * FROM CLINICA.paciente  AS pas
LEFT JOIN CLINICA.expediente as ex
ON pas.pk_idpaciente=ex.pk_idpaciente;

--right join
SELECT * FROM CLINICA.paciente  AS pas
RIGHT JOIN CLINICA.expediente as ex
ON pas.pk_idpaciente=ex.pk_idpaciente;


--join anidado
SELECT * FROM CLINICA.PACIENTE 
INNER JOIN CLINICA.CITA 
ON CLINICA.PACIENTE.pk_idpaciente=CITA.fk_idpaciente
INNER JOIN CLINICA.AGENDAR_CITA 
ON CLINICA.CITA.pk_idcita=AGENDAR_CITA.fk_idcita
INNER JOIN CLINICA.ESPECIALISTA 
ON CLINICA.AGENDAR_CITA.fk_idespecialista =ESPECIALISTA.pk_idespecialista
INNER JOIN CLINICA.EXPEDIENTE_DIAGNOSTICO 
ON CLINICA.ESPECIALISTA.pk_idespecialista=EXPEDIENTE_DIAGNOSTICO.fk_idespecialista
INNER JOIN CLINICA.EXPEDIENTE
ON CLINICA.EXPEDIENTE_DIAGNOSTICO.fk_idpaciente=EXPEDIENTE.pk_idpaciente
WHERE CLINICA.PACIENTE.pk_idpaciente='P-0001';


CREATE VIEW CLINICA.PACINETE_MASCULINO AS
SELECT * FROM clinica.paciente WHERE sexo='M';

SELECT *FROM CLINICA.PACINETE_MASCULINO;

DROP VIEW CLINICA.pacinete_masculino;

ALTER VIEW CLINICA.pacinete_masculino RENAME TO CLINICA.OTRO_NOMBRE;

SELECT * FROM CLINICA.OTRO_NOMBRE;

DROP VIEW CLINICA.OTRO_NOMBRE;
