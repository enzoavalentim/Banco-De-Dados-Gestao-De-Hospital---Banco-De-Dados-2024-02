***RETORNA LISTA DE PACIENTES COM A DATA DE SUAS CONSULTAS***
SELECT Paciente.Nome, Consulta.Data_Consulta
FROM Paciente
LEFT JOIN Consulta 
    ON Paciente.Id = Consulta.Paciente_IdPaciente;
    

***RETORNA NOME DO PACIENTE E CIRURGIA QUE ELE JA FEZ APENAS SE TIVER REGISTROS***
SELECT Paciente.Nome AS Nome_Paciente, Cirurgia.Nome AS Nome_Cirurgia
FROM Consulta
INNER JOIN 
        Paciente ON Consulta.Paciente_IdPaciente = Paciente.Id
INNER JOIN 
        Encaminhamento ON Encaminhamento.Consulta_IdConsulta = Consulta.Id
INNER JOIN 
        Encaminhamento_Cirurgia ON Encaminhamento_Cirurgia.Encaminhamento_IdEncaminhamento = Encaminhamento.Id
INNER JOIN 
        Cirurgia ON Encaminhamento_Cirurgia.Cirurgia_IdCirurgia = Cirurgia.Id;


***RETORNA TODOS OS NOMES DE PACIENTES COM AS DATAS DE CONSULTA E OS MEDICOS QUE O ATENDERAM***
SELECT Paciente.Nome, Consulta.Data_Consulta, Medico.Nome
FROM Paciente
LEFT JOIN Consulta 
    ON Paciente.Id = Consulta.Paciente_IdPaciente
LEFT JOIN Medico
    ON Medico.Id = Consulta.Medico_IdMedico;


***RETORNA PARA TODOS PACIENTES QUE TEM CONSULTAS QUAIS CIRURGIAS, EXAMES OU MEDICAMENTOS ELES FIZERAM***
SELECT 
    Paciente.Nome AS Nome_Paciente, 
    Cirurgia.Nome AS Nome_Cirurgia, 
    Exame.Nome AS Nome_Exame, 
    Medicamento.Nome AS Nome_Medicamento

FROM Consulta
LEFT JOIN Paciente 
    ON Consulta.Paciente_IdPaciente = Paciente.Id
LEFT JOIN Encaminhamento 
    ON Encaminhamento.Consulta_IdConsulta = Consulta.Id
LEFT JOIN Prescricao 
    ON Prescricao.Consulta_IdConsulta = Consulta.Id

LEFT JOIN Encaminhamento_Cirurgia 
    ON Encaminhamento_Cirurgia.Encaminhamento_IdEncaminhamento = Encaminhamento.Id
LEFT JOIN Encaminhamento_Exame 
    ON Encaminhamento_Exame.Encaminhamento_IdEncaminhamento = Encaminhamento.Id
LEFT JOIN Prescricao_Medicamento 
    ON Prescricao_Medicamento.Prescricao_IdPrescricao = Prescricao.Id

LEFT JOIN Cirurgia 
    ON Encaminhamento_Cirurgia.Cirurgia_IdCirurgia = Cirurgia.Id
LEFT JOIN Exame 
    ON Encaminhamento_Exame.Exame_IdExame = Exame.Id
LEFT JOIN Medicamento 
    ON Prescricao_Medicamento.Medicamento_IdMedicamento = Medicamento.Id;
