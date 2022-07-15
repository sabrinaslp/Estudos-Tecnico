USE atividade2;
SELECT * FROM Consulta;

/* Item 1: Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio. */
SELECT * FROM Consulta WHERE YEAR(data_horario)='2020';
SELECT YEAR(data_horario), COUNT(*), AVG(valor) FROM Consulta WHERE convenio_id IS NOT NULL and YEAR (data_horario)='2020' GROUP BY YEAR(data_horario);

SELECT * FROM Consulta WHERE convenio_id IS NOT NULL;
SELECT AVG(valor) FROM Consulta; 

/* Item 2: Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta. */
SELECT * FROM internacao WHERE data_alta > data_prev_alta;

/* Item 3: Receituário completo da primeira consulta registrada com receituário associado. */
SELECT * FROM receita WHERE consulta_id = 1;

/* Item 4: Todos os dados da consulta de maior valor e também da de menor valor (ambas as consultas não foram realizadas sob convênio). */
SELECT * FROM Consulta WHERE valor = (SELECT MAX(valor) FROM Consulta where convenio_id IS NULL) AND convenio_id is NULL UNION ALL
SELECT * FROM Consulta where valor = (SELECT MIN(valor) FROM Consulta where convenio_id IS NULL) AND convenio_id is NULL;

/* Item 5: Todos os dados das internações em seus respectivos quartos, calculando o total da internação a partir do valor de diária do quarto e o número de dias entre a 
entrada e a alta. */
SELECT i.id, i.data_entrada, i.data_prev_alta, i.data_alta, i.procedimento, i.medico_id, i.paciente_id, i.quarto_id, (SELECT (DATEDIFF(i.data_alta, i.data_entrada))) AS qtd_dias, t.valor_diaria, (SELECT (t.valor_diaria*(DATEDIFF(i.data_alta,i.data_entrada)))) AS valor_total
FROM Internacao AS i JOIN Quarto AS q JOIN Tipo_quarto AS t
ON i.quarto_id = q.id AND q.tipo_quarto_id = t.id
order by id ASC;

/* Item 6: Data, procedimento e número de quarto de internações em quartos do tipo “apartamento”.*/
SELECT i.id, i.data_entrada, i.procedimento, i.quarto_id, q.numero 
FROM Internacao AS i JOIN Quarto AS q JOIN Tipo_quarto AS t
ON i.quarto_id = q.id AND q.tipo_quarto_id = t.id
WHERE q.tipo_quarto_id = 1;

/* Item 7: Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos na data da consulta e cuja especialidade
não seja “pediatria”, ordenando por data de realização da consulta. */

-- Inclusão de pacientes menores de 18 anos
SELECT * FROM Paciente;
insert into Paciente (nome, data_nasc, endereco, telefone, email, cpf, rg, convenio_id) VALUES
('Lúcia Soares da Costa', '2004-03-28', 'Rua das Amoras', '98632845555', 'lusoarescost@email.com.br', '76390645401', '092837427', 1),
('Silvana Araujo Barros', '2008-04-22', 'Rua Antagonistas', '7982734895', 'silvanaaraurros@gmayl.com', '92134581256', '876453849', 2);

SELECT * FROM Consulta;
insert into Consulta (data_horario, valor, num_carteira, convenio_id, medico_id, paciente_id, medico_especialidade_id) VALUES
('2021-01-20 09:10:00', '110.00', '55643215', 1, 2, 15, 2), 
('2021-02-15 10:30:00', '180.00', '55649995', 2, 1, 16, 2);

SELECT p.nome AS Paciente, c.data_horario AS Data, m.descricao AS Especialidade
FROM Paciente AS p JOIN Consulta AS c JOIN Medico_especialidade AS m 
ON p.id = c.paciente_id AND m.id = c.medico_especialidade_id
WHERE TIMESTAMPDIFF(YEAR, p.data_nasc, curdate()) <= 18 AND c.medico_especialidade_id NOT LIKE ('1')
ORDER BY data_horario;

/* Item 8:  Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos da especialidade “gastroenterologia”, que
tenham acontecido em “enfermaria”. */

-- Adicionando novas internações
SELECT * FROM Internacao;
insert into internacao (data_entrada, data_prev_alta, data_alta, procedimento, medico_id, paciente_id, quarto_id) VALUES
('2017-05-23', '2017-05-27', '2017-05-25', 'Internação por infecção', 3, 9, 3), 
('2018-03-13', '2018-03-15', '2018-03-16', 'Internação por infecção', 3, 10, 3), 
('2019-08-10', '2019-08-17', '2019-08-20', 'Internação por infecção', 3, 13, 3);

SELECT p.nome AS Paciente, m.nome AS Médico, i.data_entrada AS Data, i.procedimento AS Procedimento, me.medico_especialidade_id AS Especialidade
FROM Paciente AS p JOIN Medico AS m JOIN Internacao AS i JOIN Medico_especialidade_has_medico AS me
ON p.id = i.paciente_id AND m.id = i.medico_id AND m.id = me.medico_id
WHERE me.medico_especialidade_id = 3 AND i.quarto_id = 3;

/* Item 9: Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou */
SELECT m.nome AS Médico, m.crm AS CRM, COUNT(c.id) AS Qtd_Consultas
FROM Medico AS m INNER JOIN Consulta AS c
ON m.id = c.medico_id 
GROUP BY m.nome;

/* Item 10: Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação. */
SELECT e.nome AS Enfermeiro, e.cre AS CRE, COUNT(i.id) AS Qtd_Internacao
FROM Enfermeiro AS e INNER JOIN Internacao_enfermeiro AS i
ON e.id = i.enfermeiro_id 
GROUP BY e.nome HAVING Qtd_Internacao > 1;









