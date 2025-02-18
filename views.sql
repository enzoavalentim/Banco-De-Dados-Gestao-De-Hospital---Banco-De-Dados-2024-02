CREATE VIEW Consultas_Agendadas AS
SELECT C.Id AS ConsultaID, P.Nome AS Paciente, M.Nome AS Medico, C.éRetorno
FROM CONSULTA C
JOIN PACIENTE P ON C.Paciente_IdPaciente = P.Id
JOIN MEDICO M ON C.Medico_IdMedico = M.Id;

SELECT * FROM Consultas_Agendadas;