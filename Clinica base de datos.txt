drop SCHEMA PUBLIC;
create DOMAIN Clinica.ID_Paciente as char (6) Not NULL
    check (value ~ '^[P]{1}[-]{1}\d{4}$' );--P-0001

create DOMAIN Clinica.Meespecialista as char (7) Not NULL
    check (value ~ '^[ME]{2}[-]{1}\d{4}$' );--P-0001

Create DOMAIN Clinica.ID_CITA AS CHAR (7) NOT NULL
CHECK (VALUE ~ '^[CM]{2}[-]{1}\d{4}$');

CREATE TABLE Clinica.PACIENTE (
    Pk_idpaciente Clinica.ID_Paciente , -- llave foránea 
    Nombre VARCHAR(20),
    Apellido VARCHAR(20),
    Sexo CHARACTER(1),
    Fechanacimiento DATE,
    Ciudad VARCHAR(20),
    Estado VARCHAR(20),
    Telefono CHARACTER(10),
    PRIMARY key (Pk_idpaciente)
);

CREATE TABLE Clinica.ESPECIALISTA (
    Pk_idespecialista Clinica.Meespecialista,
    Nombre VARCHAR(20),
    Apellido VARCHAR(20),
    Sexo CHAR(1),
    FechaNacimiento DATE,
    Especialisdad VARCHAR(30),
    PRIMARY KEY(Pk_idespecialista)
);
CREATE TABLE Clinica.CITA (
    Pk_idCita Clinica.ID_CITA,
    Fk_idpaciente Clinica.ID_Paciente,
    Fecha DATE,
    Hora TIME,
    PRIMARY key(Pk_idCita),
    Foreign Key (Fk_idpaciente) REFERENCES Clinica.PACIENTE(Pk_idpaciente)
    on update CASCADE on delete CASCADE
);


CREATE TABLE CLINICA.AGENDAR_CITA (
    Fk_idCita Clinica.ID_CITA,
    Fk_idespecialista Clinica.Meespecialista,
    Consultorio VARCHAR(20),
    FechaCita DATE,
    Horacita TIME,
    Turno VARCHAR(10),
    Estatus VARCHAR(10),
    Observacionescosulta VARCHAR(100),
    PRIMARY KEY(Fk_idCita,Fk_idespecialista),
    Foreign Key (Fk_idCita) REFERENCES Clinica.CITA(Pk_idCita)
    on update CASCADE on delete CASCADE,
    Foreign Key (Fk_idespecialista) REFERENCES Clinica.ESPECIALISTA(Pk_idespecialista)
    on update CASCADE on delete CASCADE
);

----
CREATE TABLE Clinica.EXPEDIENTE (
    Pk_idpaciente Clinica.ID_Paciente,
    Tiposangre VARCHAR(10),
    Tipoalergia VARCHAR(50),
    Padecimientocro VARCHAR(50),
    Fechacreacion TIMESTAMp,
    PRIMARY KEY(Pk_idpaciente), 
    FOREIGN KEY (Pk_idpaciente) REFERENCES Clinica.PACIENTE (Pk_idpaciente)
    on update CASCADE on delete CASCADE
);



CREATE TABLE Clinica.Expediente_Diagnostico (
    Folio SERIAL,
    Fk_idEspecialista Clinica.Meespecialista,
    Fk_Idpaciente Clinica.ID_Paciente,
    Edad CHAR(3),
    Pesos VARCHAR(3),
    Altura VARCHAR(4),
    IMC CHAR(5),
    Nivelpeso VARCHAR(10),
    PrecionArterial CHAR(8),
    Diagnostico VARCHAR(150),
    Rectario VARCHAR(150),
    FechaCreacion TIMESTAMP,
    PRIMARY KEY(Folio),
    Foreign Key (Fk_idEspecialista) REFERENCES Clinica.ESPECIALISTA(Pk_idespecialista)
    on update CASCADE on delete CASCADE,
    FOREIGN KEY (Fk_Idpaciente) REFERENCES Clinica.PACIENTE (Pk_idpaciente)
    on update CASCADE on delete CASCADE
);

