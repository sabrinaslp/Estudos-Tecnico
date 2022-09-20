/* ATIVIDADE 3 UC05 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

USE techmasters;

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Item 1: Ajuste questões de segurança, incluindo usuários, papéis e permissões.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

-- Criação de usuário responsável por desenvolver o software (acesso a todas as funcionalidades) --------------------------------------------------------------------------------------
CREATE USER 'developer'@'localhost' IDENTIFIED BY 'dev3lop3r0291'; 
SELECT * FROM mysql.user;

CREATE ROLE 'app_developer';
GRANT ALL ON techmasters.* TO 'app_developer';

GRANT 'app_developer' TO 'developer'@'localhost';
SELECT * FROM mysql.user;

FLUSH PRIVILEGES; 
SHOW GRANTS FOR app_developer; 

-- Criação de usuário MENTOR (acesso a todas as funcionalidades) -------------------------------------------------------------------------------------------------------------------
CREATE USER 'mentor'@'localhost' IDENTIFIED BY 'ment0ri43341'; 
SELECT * FROM mysql.user;

CREATE ROLE 'app_mentor';
GRANT ALL ON techmasters.* TO 'app_mentor';

GRANT 'app_mentor' TO 'mentor'@'localhost';
SELECT * FROM mysql.user;

FLUSH PRIVILEGES; 
SHOW GRANTS FOR app_mentor; 

-- Criação de usuário APRENDIZ (acesso para ver projetos e inserir/alterar/ver fórum) ------------------------------------------------------------------------------------------------
CREATE USER 'aprendiz'@'localhost' IDENTIFIED BY 'apr3nd1z8261'; 
SELECT * FROM mysql.user;

CREATE ROLE 'app_aprendiz';
GRANT SELECT ON techmasters.projeto TO 'app_aprendiz';
GRANT SELECT, INSERT, UPDATE, DELETE ON techmasters.forum TO 'app_aprendiz';

GRANT 'app_aprendiz' TO 'aprendiz'@'localhost';
SELECT * FROM mysql.user;

FLUSH PRIVILEGES; 
SHOW GRANTS FOR app_aprendiz; 

-- Criação de usuário AJUDANTE (acesso a projetos, fórum, material, tecnologia) ---------------------------------------------------------------------------------------------------------------------
CREATE USER 'ajudante'@'localhost' IDENTIFIED BY 'ajud4nt352019'; 
SELECT * FROM mysql.user;

CREATE ROLE 'app_ajudante';
GRANT SELECT, INSERT, UPDATE, DELETE ON techmasters.projeto TO 'app_ajudante';
GRANT SELECT, INSERT, UPDATE, DELETE ON techmasters.forum TO 'app_ajudante';
GRANT SELECT, INSERT, UPDATE, DELETE ON techmasters.material TO 'app_ajudante';
GRANT SELECT, INSERT, UPDATE, DELETE ON techmasters.tecnologia TO 'app_ajudante';

GRANT 'app_ajudante' TO 'ajudante'@'localhost';
SELECT * FROM mysql.user;

FLUSH PRIVILEGES; 
SHOW GRANTS FOR app_ajudante; 

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Item 2: Crie visões no banco de dados para consultas mais frequentes.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

-- View de consulta para encontrar todos os projetos básicos (nível 1) e o ajudante responsável
CREATE VIEW view_ajudante_basico AS 
SELECT p.descricao AS 'Projeto', n.descricao AS 'Dificuldade', aj.nome AS 'Ajudante responsável'
FROM nivel AS n JOIN projeto AS p JOIN ajudante AS aj JOIN nivel_ajudante AS naj
ON p.nivel_id = n.idNivel AND aj.idAjudante = naj.ajudante_id
WHERE p.nivel_id = '1' AND naj.nivel_id = '1';

SELECT * FROM view_ajudante_basico;

-- View de consulta para encontrar aprendizes que tenham mais de 21 anos para possibilidade de realizar estágios após conclusão dos projetos
CREATE VIEW view_aprendiz_estagio AS 
SELECT a.nome AS 'Aprendiz', a.email AS 'E-mail', TIMESTAMPDIFF(YEAR, a.data_nasc, CURDATE()) AS 'Idade'
FROM aprendiz AS a WHERE TIMESTAMPDIFF(YEAR, a.data_nasc, CURDATE()) > 21
ORDER BY Aprendiz ASC;

SELECT * FROM view_aprendiz_estagio;

-- View de consulta para encontrar mentores com mais de 2 anos de experiência, quais projetos esses mentores estão sendo responsáveis e a tecnologia utilizada
CREATE VIEW view_mentor_experiente AS 
SELECT m.nome AS 'Mentor(a)', m.anos_exp AS 'Experiência (em anos)', p.descricao AS 'Projeto', t.nome AS 'Tecnologia' 
FROM mentor AS m JOIN projeto AS p JOIN tecnologia AS t
ON m.idMentor = p.mentor_id AND p.tecnologia_id = t.idTecnologia
WHERE m.anos_exp > 2
ORDER BY 'Mentor(a)' ASC;

SELECT * FROM view_mentor_experiente;

-- View de consulta para encontrar ajudantes que são fluentes em inglês e saibam tecnologias de front-end (html, css, javascript)
CREATE VIEW view_ajudante_front AS 
SELECT a.nome AS 'Ajudante', a.fluente_ingles AS 'Fluência', t.nome AS 'Tecnologia'
FROM ajudante AS a JOIN tecnologia AS t
ON a.tecnologia_id = t.idTecnologia
WHERE a.fluente_ingles = 'S' AND a.tecnologia_id = '2'
ORDER BY 'Ajudante' ASC;

SELECT * FROM view_ajudante_front;

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Item 3: Crie ao menos uma stored function, um stored procedure ou um trigger para o banco de dados, selecionando uma funcionalidade que seja adequada para tanto.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */

-- Procedure que recebe id do Aprendiz e que mostra o projeto que está sendo realizado, tecnologia, aprendiz e mentor responsável
DELIMITER  //
CREATE PROCEDURE consultar_aprendiz (idAprendiz INT)
	BEGIN
		SELECT a.nome AS 'Aprendiz', p.descricao AS 'Projeto', t.nome AS 'Tecnologia', aj.nome AS 'Ajudante', m.nome AS 'Mentor'
		FROM aprendiz AS a JOIN ajudante AS aj JOIN tecnologia AS t JOIN mentor AS m JOIN projeto AS p
		ON a.projeto_id = p.idProjeto AND m.idMentor = p.mentor_id AND t.idTecnologia = aj.tecnologia_id AND t.idTecnologia = p.tecnologia_id
		WHERE a.idAprendiz = idAprendiz;
	END//
DELIMITER ;

CALL consultar_aprendiz (4); 

-- Function que recebe id do aprendiz e retorna se ele é "MAIOR DE IDADE" (idade igual ou maior que 18) ou "MENOR DE IDADE" (idade menor que 18). 
DELIMITER //
CREATE FUNCTION fn_checarMaioridade (aprendiz_id INT) RETURNS VARCHAR(45) DETERMINISTIC
	BEGIN
		DECLARE exibir VARCHAR(45);
        DECLARE idade INT;
        
        SELECT TIMESTAMPDIFF(YEAR, a.data_nasc, CURDATE()) INTO idade
        FROM aprendiz AS a WHERE a.idAprendiz = aprendiz_id;
        
        IF idade >= 18 THEN
			SET exibir := "MAIOR DE IDADE";
		ELSE 
			SET exibir := "MENOR IDADE";
		END IF;
        
        RETURN exibir;
        
    END //
DELIMITER ;

SELECT techmasters.fn_checarMaioridade(6) AS 'Maioridade';

/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Item 4: Crie ao menos um índice composto para uma das tabelas.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
CREATE INDEX idx_graduacao ON mentor(graduacao);
CREATE INDEX idx_anos_exp ON mentor(anos_exp);

CREATE INDEX idx_nome_aprendiz ON aprendiz(nome);
CREATE INDEX idx_escolaridade_aprendiz ON aprendiz(escolaridade);

