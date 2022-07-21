-- Script para povoamento do Banco de dados (Item 4):
USE techmasters;

INSERT INTO Tecnologia (nome) VALUES
('Java'),
('Html, CSS e Javascript'),
('Python'), 
('C#');
SELECT * FROM Tecnologia; 

INSERT INTO Nivel (descricao) VALUES
('Básico'),
('Intermediário'),
('Avançado'),
('Experiente');
SELECT * FROM Nivel; 

INSERT INTO Ajudante (tecnologia_id, nome, data_nasc, cpf, rg, email, fluente_ingles, anos_exp) VALUES
('1', 'Clarice Isadora Pires', '1977-05-19', '86307629266', '389951201', 'clarice.isadora.pires@hotrmail.com', 'S', '1'), /* 1 */ 
('2', 'Lorena Mariane Benedita Peixoto', '1995-03-27', '42863004980', '310324300', 'lorena-peixoto85@its.jnj.com', 'S', NULL), /* 2 */ 
('3', 'Nelson Diogo da Paz', '1990-04-09', '03954868075', '347793186', 'nelson_dapaz@tribunaimpressa.com.br', 'N', '3'), /* 3 */ 
('4', 'Rebeca Luna Almeida', '1996-07-03', '55452362363', '395495611', 'rebeca_almeida@heineken.com.br', 'N', NULL); /* 4 */ 
SELECT * FROM Ajudante;

INSERT INTO Nivel_ajudante (ajudante_id, nivel_id) VALUES
('1','3'), /* 1 */
('2', '2'), /* 2 */
('3', '4'), /* 3 */
('4', '1'); /* 4 */
SELECT * FROM Nivel_ajudante;

INSERT INTO Mentor (idMentor, tecnologia_id, nome, data_nasc, cpf, rg, email, endereco, graduacao, anos_exp, fluente_ingles) VALUES
('1','1', 'Silvana Sales da Costa', '1980-03-22', '99845129080', '765293847', 'silsalescosta@hotymail.com', 'Rua das Flores 100', 'Superior Completo', '5', 'S'), /* 1 */ 
('2','2', 'Carlos Augusto das Dores', '1985-06-13', '33455129222', '324304958', 'carlosaugusto@emailsfree.com', 'Rua dos Antagonistas 93', 'Superior Completo', '3', 'S'), /* 2 */ 
('3','3', 'Luan Oliveira Santana', '1999-09-07', '72498735462', '876354987', 'luan.oliveiras@gmayl.com', 'Avenida das árvores 1092', 'Superior Incompleto', '2', 'S'), /* 3 */
('4','4', 'Caroline Benitez dos Santos', '1984-01-03', '50263794802', '273645983', 'carolbenidoss@emailagr.com', 'Rua Angela da Silva 201', 'Superior Completo', '1', 'S'); /* 4 */ 
SELECT * FROM Mentor;

INSERT INTO Projeto (idProjeto, tecnologia_id, mentor_id, nivel_id, descricao) VALUES
('1', '1', '1', '3', 'Software para Hospital'), /* 1 */
('2', '2', '2', '1', 'Landing Page para BOT'), /* 2 */
('3', '3', '3', '2', 'Software para Escola'), /* 3 */
('4', '4', '4', '4', 'Software para empresa de telecomunicações'); /* 4 */
SELECT * FROM Projeto;

INSERT INTO Aprendiz (idAprendiz, tecnologia_id, projeto_id, nome, data_nasc, cpf, rg, email, escolaridade, horas_disponiveis) VALUES
('1', '2', '2', 'Ana Luiza Messias', '2002-04-28', '30875445071', '460510630', 'analumessias@dizain.com.br', 'Médio Completo', '5'), /* 1 */ 
('2', '2', '2', 'Breno Silva Nunes', '2000-10-11', '60551252006', '296935402', 'breno.silvanunes@aiesec.net', 'Médio/Técnico Completo', '3'), /* 2 */ 
('3', '4', '4', 'Camila Costa Gabriela', '1998-03-22', '01961686007', '119677854', 'camila.gabriela@hotmail.fr', 'Médio Completo', '5'), /* 3 */ 
('4', '3', '3', 'Yago Santos de Souza Paz', '1993-07-10', '91400016010', '364762792', 'yago.paz@ddfnet.com.br', 'Superior Incompleto', '4'), /* 4 */ 
('5', '1', '1', 'Evelyn Luzia da Luz', '2001-09-07', '39513705056', '353065006', 'evelynluz.luz@oralcamp.com.br', 'Médio Completo', '12'), /* 5 */ 
('6', '4', '4', 'Jose Benedito Rosa Carvalho', '1999-11-11', '09586951057', '87364059', 'jose.carvalho@startingfitness.com.br', 'Médio Completo', '10'), /* 6 */ 
('7', '1', '1', 'Valentina Luiz Galvão', '1986-05-25', '71466974010', '153509454', 'valentina.galvao@hotmail.de', 'Superior Incompleto', '7'), /* 7 */ 
('8', '3', '3', 'Rodrigo Kaique Rafael Lima', '2001-07-15', '67132055003', '373620688', 'rodrigokarali@gmayl.de', 'Técnico Incompleto', '6'); /* 8 */ 
SELECT * FROM Aprendiz;

INSERT INTO Material (idMaterial, descricao, projeto_id) VALUES
('1', 'Material para desenvolvimento com C#', '4'), /* 1 */
('2', 'Material para desenvolvimento Front-End', '2'), /* 2 */
('3', 'Material para desenvolvimento com Java', '1'), /* 3 */
('4', 'Material para desenvolvimento com Python', '3'); /* 4 */
SELECT * FROM Material;

INSERT INTO Forum (idForum, descricao, projeto_id) VALUES
('1', 'Fórum - Projeto C#', '4'), /* 1 */
('2', 'Fórum - Projeto Front-End', '2'), /* 2 */
('3', 'Fórum - Projeto Java', '1'), /* 3 */
('4', 'Fórum - Projeto Python', '3'); /* 4 */
SELECT * FROM Forum;
