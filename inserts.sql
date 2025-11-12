INSERT INTO paciente (
    nombrePaciente,
    segundoNombrePaciente,
    apellidoPaciente,
    segundoApellidoPaciente,
    correoPersonal,
    correoSolumeds,
    rut,
    fechaNacimiento,
    sexo,
    direccion,
    telefono,
    idNacionalidad,
    idPrevision,
    prais
)
VALUES

    ('María','Josefa','González','Rivas','maria.gonzalez@gmail.com','mgonzalez@solumeds.cl','18234567-2','1988-04-15',0,'Avenida Las Torres 542','988112233',1,4,0),

    ('Carlos','Eduardo','Pérez','Ramírez','carlos.perez@gmail.com','cperez@solumeds.cl','20999876-3','1995-11-02',1,'Los Jardines 875','976543210',2,2,1),

    -- 4
    ('Valentina','Andrea','López','Muñoz','valentina.lopez@gmail.com','vlopez@solumeds.cl','19333444-4','1992-07-20',0,'Pasaje del Sol 320','944556677',3,3,0),

    -- 5
    ('Tomás','Ignacio','Fernández','Soto','tomas.fernandez@gmail.com','tfernandez@solumeds.cl','17888999-5','1985-09-13',1,'Camino del Alba 452','933221199',1,5,0),

    -- 6
    ('Lucía','Beatriz','Herrera','Campos','lucia.herrera@gmail.com','lherrera@solumeds.cl','20011222-6','1999-02-28',0,'Calle Los Cerezos 145','955667788',4,6,1);


INSERT INTO tipoprevision (tipoPrevision) VALUES
('PARTICULAR'),
('OTRO');

INSERT INTO prevision (nombrePrevision, idTipoPrevision) VALUES
('PARTICULAR DIRECTO', 3),
('MUNICIPAL FUNCIONARIO', 3),
('CONVENIO UNIVERSIDAD', 4);


INSERT INTO alergiapaciente (idPaciente, idAlergia, idSeveridad, sintomas, fechaDiagnostico) VALUES
(1, 1, 2, 'Congestión nasal, picazón en ojos y estornudos frecuentes', '2015-09-12'),
(1, 4, 3, 'Reacción cutánea y dificultad para respirar tras ingerir mariscos', '2018-03-25'),
(1, 10, 1, 'Urticaria leve luego del uso de antibióticos', '2021-11-02');


INSERT INTO vacunapaciente (idPaciente, idVacuna, fecha, dosis, establecimiento, proveedor) VALUES
(1, 1, '2020-03-15 10:00:00', 1.0, 'Centro de Salud Familiar Los Olivos', 'Ministerio de Salud'),
(1, 3, '2021-06-10 11:00:00', 0.5, 'Clínica Vida Sana', 'Pfizer'),
(1, 5, '2023-11-05 09:30:00', 1.0, 'Hospital Regional de Santiago', 'Sinovac');


INSERT INTO toxicidadmedicamentos (idPrincipio1, idPrincipio2, idSeveridad) VALUES
(1, 2, 1),   -- Paracetamol + Ibuprofeno (leve)
(6, 8, 2),   -- Lisinopril + Aspirina (moderado)
(18, 6, 3),  -- Losartán + Lisinopril (grave)
(5, 6, 2),   -- Metformina + Lisinopril (moderado)
(9, 19, 2);  -- Prednisona + Alprazolam (moderado)


INSERT INTO intervecnionpaciente (idPaciente, idIntervencion, idDoctor, fechaIntervencion, horaIntervención) VALUES
(1, 1, 1, '2019-04-15', '09:30:00'),
(1, 9, 3, '2022-07-08', '11:00:00');


INSERT INTO examenpaciente (idPaciente, idExamen, fecha, idDoctor, comentario, linkExamen) VALUES
(1, 1, '2020-05-10', 2, 'Hemograma con leve anemia ferropénica', 'https://example.com/examenes/hemograma_2020.pdf'),
(1, 3, '2021-02-18', 3, 'Glucosa en rango normal', 'https://example.com/examenes/glucosa_2021.pdf'),
(1, 9, '2022-12-02', 4, 'Sin fracturas ni lesiones óseas visibles', 'https://example.com/examenes/radiografia_extremidades_2022.pdf'),
(1, 11, '2023-05-14', 5, 'Ecografía pélvica normal', 'https://example.com/examenes/ecografia_2023.pdf');


INSERT INTO enfermedadcronicapaciente (idPaciente, idEnfermedadCronica, fechaDiagnostico) VALUES
(1, 1, '2021-01-20'),
(1, 2, '2023-02-15');
