ALTER table Clinica.Paciente ADD COLUMN Ejemplo VARCHAER(30);--agregar columna
ALTER table Clinica.Paciente ALTER COLUMN Ejemplo TYPE CHAR(50);--tipo de dato
ALTER table Clinica.Paciente DROP COLUMN Ejemplo;--eliminar columna
ALTER table Clinica.Paciente RENAME COLUMN Ejemplo TO EJEMPLO_NUEVO;--cambiar de nombre de columna
ALTER table Clinica.Paciente RENAME TO PACIENTE_NUIEVO;--cambiar nombre de la tabla

--BORARR TABLA
DROP TABLE CLINICA.Paciente CASCADE;
