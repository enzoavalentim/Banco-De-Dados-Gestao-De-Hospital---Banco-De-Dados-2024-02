DELIMITER //

CREATE PROCEDURE RegistrarPaciente(
    IN p_Nome VARCHAR(80),
    IN p_Endereco VARCHAR(100),
    IN p_Idade INT
)
BEGIN
    INSERT INTO PACIENTE (Nome, Endereco, Idade) 
    VALUES (p_Nome, p_Endereco, p_Idade);
END //

DELIMITER ;
CALL RegistrarPaciente('Carlos Silva', 'Rua das Flores, 123', 45);


DELIMITER //

CREATE PROCEDURE RegistrarMedico(
    IN p_Nome VARCHAR(80),
    IN p_Especialidade VARCHAR(50)
)
BEGIN
    INSERT INTO MEDICO (Nome, Especialidade) 
    VALUES (p_Nome, p_Especialidade);
END //

DELIMITER ;

CALL RegistrarMedico('Dra. Ana Souza', 'Cardiologia');


DELIMITER //

CREATE PROCEDURE RegistrarConsulta(
    IN p_PacienteId INT,
    IN p_MedicoId INT,
    IN p_eRetorno BOOLEAN
)
BEGIN
    INSERT INTO CONSULTA (Paciente_IdPaciente, Medico_IdMedico, éRetorno) 
    VALUES (p_PacienteId, p_MedicoId, p_eRetorno);
END //

DELIMITER ;
CALL RegistrarConsulta(1, 2, FALSE);