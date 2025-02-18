INSERT INTO PACIENTE (Nome, Endereco, Idade)
VALUES ('Nome do Paciente', 'Endereço do Paciente', Idade);

INSERT INTO MEDICO (Nome, Especialidade)
VALUES ('Nome do Médico', 'Especialidade do Médico');

INSERT INTO CIRURGIA (Nome)
VALUES ('Nome da Cirurgia');

INSERT INTO EXAME (Nome)
VALUES ('Nome do Exame');

INSERT INTO MEDICAMENTO (Nome)
VALUES ('Nome do Medicamento');

INSERT INTO PRESCRICAO (Consulta_IdConsulta)
VALUES (idConsulta);

INSERT INTO CONSULTA (éRetorno, Paciente_IdPaciente, Medico_IdMedico, Data_Consulta)
VALUES (valorÉRetorno, idPaciente, idMedico, Data_Consulta);

INSERT INTO ENCAMINHAMENTO (éExame, éCirurgia, Consulta_IdConsulta)
VALUES (valorÉExame, valorÉCirurgia, idConsulta);

INSERT INTO ENCAMINHAMENTO_CIRURGIA (Cirurgia_IdCirurgia, Encaminhamento_IdEncaminhamento)
VALUES (idCirurgia, idEncaminhamento);

INSERT INTO ENCAMINHAMENTO_EXAME (Exame_IdExame, Encaminhamento_IdEncaminhamento)
VALUES (idExame, idEncaminhamento);

INSERT INTO PRESCRICAO_MEDICAMENTO (Medicamento_IdMedicamento, Prescricao_IdPrescricao)
VALUES (idMedicamento, idPrescricao);