DELIMITER //

CREATE TRIGGER Verificar_Medico_Existe
BEFORE INSERT ON CONSULTA
FOR EACH ROW
BEGIN
    DECLARE medicoExiste INT;

    -- Verifica se o médico existe na tabela MEDICO
    SELECT COUNT(*) INTO medicoExiste 
    FROM MEDICO 
    WHERE Id = NEW.Medico_IdMedico;

    -- Se o médico não existir, impede a inserção da consulta
    IF medicoExiste = 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Erro: O médico informado não existe.';
    END IF;
END //

DELIMITER ;

DELIMITER //

CREATE TRIGGER Verificar_Paciente_Existe
BEFORE INSERT ON CONSULTA
FOR EACH ROW
BEGIN
    DECLARE pacienteExiste INT;

    -- Verifica se o paciente existe na tabela PACIENTE
    SELECT COUNT(*) INTO pacienteExiste 
    FROM PACIENTE 
    WHERE Id = NEW.Paciente_IdPaciente;

    -- Se o paciente não existir, impede a inserção da consulta
    IF pacienteExiste = 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Erro: O paciente informado não existe.';
    END IF;
END //

DELIMITER ;