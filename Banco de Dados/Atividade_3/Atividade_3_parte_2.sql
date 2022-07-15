-- Atividade 3 - Parte 2

-- Item 1
USE atividade2;
SELECT * FROM Medico;

ALTER TABLE Medico add Atividade varchar(25);
UPDATE Medico SET Atividade = 'Ativo' WHERE id=1 OR id=2 OR id=3 OR id=4 OR id=6 OR id=7 OR id=10;
UPDATE Medico SET Atividade = 'Inativo' WHERE id=5 OR id=8 OR id=9;

-- Item 2
SELECT * FROM Internacao;
UPDATE Internacao SET data_alta = '2016-06-25' WHERE id=1;

-- Item 3
UPDATE Consulta SET convenio_id = NULL WHERE convenio_id = 4;
SELECT * FROM Consulta;
DELETE FROM Consulta WHERE convenio_id = 4;

SELECT * FROM Convenio;
DELETE FROM convenio WHERE id = 4;
