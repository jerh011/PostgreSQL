SELECT * FROM CLINICA.especialista 
WHERE pk_idespecialista IN (SELECT fk_idespecialista FROM agendar_cita
                            WHERE fechacita BETWEEN '2022-10-04' AND '2022-10-05');

SELECT * FROM CLINICA.especialista 
WHERE pk_idespecialista NOT IN (SELECT fk_idespecialista FROM agendar_cita
                            WHERE fechacita BETWEEN '2022-10-04' AND '2022-10-05');

SELECT * FROM clinica.paciente
INNER JOIN clinica.expediente_diagnostico
on paciente.pk_idpaciente=clinica.expediente_diagnostico.fk_idpaciente
where (sexo='M'
AND expediente_diagnostico.fk_idespecialista in (SELECT pk_idespecialista FROM clinica.especialista where pk_idespecialista in ('ME-0001','NE-003')))

SELECT * from clinica.expediente_diagnostico 
where pesos in (SELECT MAX(pesos) 
                FROM clinica.expediente_diagnostico)


SELECT * from clinica.expediente_diagnostico 
where pesos in (SELECT MAX(pesos) 
                FROM clinica.expediente_diagnostico)
or edad IN(SELECT max (edad) 
        FROM clinica.expediente_diagnostico );

SELECT *,(select tiposangre FROM clinica.expediente where pk_idpaciente=paciente.pk_idpaciente) 
FROM clinica.paciente where pk_idpaciente='P-0001';
