--update clinica.paciente set estado ='MEXICO'

update clinica.paciente set estado='jalisco' WHERE pk_idpaciente ='P-0004'

---condicion and
update clinica.paciente set ciudad='XALAPA' WHERE sexo='M' AND estado='MEXICO';

--condicion 
UPDATE clinica.paciente SET ciudad='XALAPA' WHERE sexo='F' or estado='MEXICO'

------------------DELETED
SELECT * FROM clinica.paciente;

DELETE from clinica.paciente where pk_idpaciente='P-0000';

DELETE from clinica.paciente;

SELECT * form clinica.expediente where pk_idPaciente ='P-0009';

SELECT * from clinica.cita WHERE fk_idpaciente ='P-0009';
