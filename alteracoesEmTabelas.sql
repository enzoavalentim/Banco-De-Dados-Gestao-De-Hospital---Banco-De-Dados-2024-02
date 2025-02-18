ALTER TABLE Consulta
ADD COLUMN Data_Consulta DATE;

UPDATE Consulta
SET Data_Consulta = '2025-01-18'
WHERE Id = '3';

ALTER TABLE Consulta
MODIFY COLUMN Data_Consulta DATE NOT NULL;