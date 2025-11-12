SELECT
    c1.nombrePaciente,
    c1.apellidoPaciente,
    a.nombreAlergia,
    c1.idSeveridad,
    c1.sintomas
FROM
    (
        select
            p.nombrePaciente,
            p.apellidoPaciente,
            ap.idAlergia,
            ap.idSeveridad,
            ap.sintomas
        from
            alergiapaciente ap
            join paciente p on p.idPaciente = ap.idPaciente
    ) as c1
    JOIN alergia a on a.idAlergia = c1.idAlergia;