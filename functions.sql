DELIMITER //
CREATE FUNCTION Total_Consultas_PorMedico(medicoId INT)  
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE totalConsultas INT;
    DECLARE nomeMedico VARCHAR(80);
    DECLARE resultado VARCHAR(100);

    SELECT Nome INTO nomeMedico 
    FROM MEDICO 
    WHERE Id = medicoId;

    SELECT COUNT(*) INTO totalConsultas
    FROM CONSULTA
    WHERE Medico_IdMedico = medicoId;

    SET resultado = CONCAT(nomeMedico, ' realizou ', totalConsultas, ' consultas');

    RETURN resultado;
END //

DELIMITER ;

SELECT Total_Consultas_PorMedico(3);