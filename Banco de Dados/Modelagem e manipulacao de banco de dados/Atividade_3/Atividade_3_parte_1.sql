-- Atividade 3 - Parte 1
USE atividade2;

-- Item 1
insert into Medico (id, nome, data_nasc, cpf, crm, uf, nivel, telefone, endereco) VALUES 
('1', 'Anny Quintilha', '1970-11-10', '86132473009', '120935', 'RS', 'Especialista', '6937525488', 'Rua Flores 10, apto 101'),
('2', 'Suéli Simão Pegado', '1990-08-27', '62876978067', '15891', 'SP', 'Residente', '9728102734', 'Avenida Japão 50'),
('3', 'Alisson Sacramento', '1981-01-15', '80814279023', '178105', 'MG', 'Especialista', '7927180264', 'Rua Albieri 480'),
('4', 'Lívia Veloso', '1972-03-22', '20924987030', '17897', 'MG', 'Especialista', '6130191483', 'Travessa A 89'),
('5', 'Gael Milheiro Lemes', '1964-02-13', '38603737061', '9826', 'RS', 'Especialista', '8224337762', 'Rua das Rosas, 80, apto 200'),
('6', 'Gisela Espinosa', '1980-09-12', '23529091049', '34548', 'SP', 'Generalista', '8633684812', 'Avenida Santos, 90'),
('7', 'Nelson Anjos Palmeiras', '1980-10-14', '03626639045', '344789', 'SP', 'Especialista', '5439414795', 'Rua Álamo, 180, ap 90'),
('8', 'Ezequiel Pestana Henrique', '1979-06-30', '67297959057', '9756', 'RS', 'Especialista', '6925376076', 'Avenida Chateaubriand, 150'),
('9', 'Tito Carqueijeiro', '1973-05-19', '74588651056', '14777', 'RS', 'Generalista', '8332728326', 'Rua Flores 670'),
('10', 'Fabiano Gomide', '1989-08-31', '32972518080', '65765', 'RS', 'Residente', '6332305071', 'Avenida das Águas 600');

insert into Medico_especialidade (id, descricao) VALUES
('1', 'Pediatria'),
('2', 'Clínica geral'),
('3', 'Gastroenterologia'),
('4', 'Dermatologista'),
('5', 'Cardiologista'),
('6', 'Infectologista'),
('7', 'Oftalmologista');

insert into Medico_especialidade_has_medico (medico_especialidade_id,medico_id) VALUES
(1,1),
(2,1),
(2,2),
(3,3),
(7,4),
(4,5),
(5,6),
(6,7),
(1,8),
(2,9),
(6,10);

-- Item 2
USE atividade2;
SELECT * FROM Convenio;
insert into Convenio (id, nome, CNPJ, tempo_carencia) VALUES
('1', 'GoodHealth', '12345678912345', '2 meses'),
('2', 'SaúdeBoa', '98730493827304', '3 meses'),
('3', 'Unigood', '23098472093182', '6 meses'),
('4', 'Unihealth', '10032002090701', '10 meses');

USE atividade2;
SELECT * FROM Paciente;
insert into Paciente (id, nome, data_nasc, endereco, telefone, email, cpf, rg, convenio_id) VALUES
('1', 'Augusto Calebe Mário Almeida', '1966-01-16', 'Praça José Ariel Rabelo de Almeida', '79992843684', 'augustocalebealmeida@ornatopresentes.com.br', '94461645401', '231660327', 1),
('2', 'Leandro Thales Viana', '1956-05-21', 'Rua Modernistas', '7929941894', 'leandrothalesviana@cancaonova.com', '21288181256', '214793849', 2),
('3', 'Eduarda Flávia da Rosa', '1964-07-02', 'Rua Gonçalves Dias', '9826139374', 'eduarda.flavia.darosa@renatoseguros.com', '23126934889', '394724197', 3),
('4', 'Augusto Vinicius Freitas', '1978-07-06', 'Rua Uganda', '4127552006', 'augusto_vinicius_freitas@infonet.com.br', '81419431897', '228685795', 4),
('5', 'Tiago Benício Gomes', '1966-04-19', 'Rua Porto Itaguai', '8337623103', 'tiago-gomes87@piemme.com.br', '65666951688', '148549974', 1),
('6', 'Andrea Daniela Tatiane dos Santos', '1954-05-16', 'Rua Virgílio Correia', '8828369366', 'andrea-dossantos74@gripoantonin.com', '50824554787', '258632987', NULL),
('7', 'Thomas Hugo Caio Farias', '1995-06-24', 'Rua Sete', '9836340811', 'thomas_hugo_farias@metroquali.com.br', '53084950334', '223001442', 2),
('8', 'Rafael Heitor Hugo Sales', '1951-02-24', 'Rua Maurício Pereira', '82991711387', 'rafael_heitor_sales@hydropowermc.com.br', '81200789776', '289483165', NULL),
('9', 'Nathan Lucca da Cunha', '2002-01-14', 'Servidão Sigismundo Berto Bianchi', '4837748889', 'nathan.lucca.dacunha@pharmaterra.com.br', '57189132007', '159907354', 4),
('10', 'Pedro Alexandre Teixeira', '1984-05-13', 'Rua Paulino Vieira Tiradentes', '2837171415', 'pedroalexandreteixeira@vivax.com', '12732042552', '335099087', NULL),
('11', 'Eloá Jéssica da Mota', '1971-01-06', 'Rua do Sossego', '8129035458', 'eloajessicadamota@comprehense.com.br', '77347681219', '155108888', 2),
('12', 'Clarice Marcela Fernanda Santos', '1943-06-19', 'Quadra Quadra 126', '6137785232', 'larice_marcela_santos@2emesconstrutora.com.br', '40502192399', '286885517', 3),
('13', 'Elias Noah Gael da Luz', '1945-04-16', 'Rua Alberto Kmiecik', '4135501410', 'elias_daluz@ocaconsultoria.com', '78928371597', '483038799', 3),
('14', 'Larissa Ester Nunes', '1981-04-07', 'Rua 12A', '8528465115', 'larissaesternunes@sitran.com.br', '50536741328', '165502708', 1),
('15', 'Sophia Mendes da Paz', '1989-03-12', 'Rua Zilda Silva de Souza', '4739043291', 'sophia.mendes.dapaz@bsd.com.br', '89748248682', '234558908', 3); 

-- Itens 3 e 4
USE atividade2;
SELECT * FROM Consulta;
insert into Consulta (id, data_horario, valor, num_carteira, convenio_id, medico_id, paciente_id, medico_especialidade_id) VALUES
('1','2015-02-16 09:10:00', '110.00', '55643215', 1, 2, 5, 2), /* 1 */ 
('2','2015-05-21 10:30:00', '180.00', '55649995', 4, 1, 4, 2), /* 2 */ 
('3','2015-05-26 10:45:00', '180.00', '87209995', NULL, 6, 6, 5), /* 3 */
('4','2016-06-10 11:00:00', '150.00', '87209995', NULL, 9, 6, 2), /* 4 */
('5','2016-07-15 15:15:00', '200.00', '28374995', 3, 3, 13, 3), /* 5 */
('6','2016-07-20 17:30:00', '200.00', '28678845', 1, 10, 1, 6), /* 6 */
('7','2016-07-29 12:35:00', '190.00', '09009333', 2, 5, 2, 4), /* 7 */
('8','2017-08-10 12:30:00', '220.00', '09009333', 2, 10, 2, 6), /* 8 */
('9','2017-08-22 09:30:00', '100.00', '98983395', 3, 1, 3, 1), /* 9 */
('10','2017-09-15 18:00:00', '110.00', '89997637', 2, 4, 7, 7), /* 10 */
('11','2017-09-30 11:00:00', '300.00', '76420995', NULL, 9, 8, 2), /* 11 */
('12','2018-01-17 08:30:00', '180.00', '90908933', 4, 6, 9, 5), /* 12 */
('13','2018-02-25 10:00:00', '190.00', '10039090', NULL, 3, 10, 3), /* 13 */
('14','2019-03-10 13:25:00', '120.00', '76540202', 2, 10, 11, 6), /* 14 */
('15','2019-05-20 12:00:00', '180.00', '11120004', 3, 7, 12, 6), /* 15 */
('16','2020-05-30 11:30:00', '190.00', '29293995', 1, 4, 14, 7), /* 16 */
('17','2020-06-01 09:15:00', '200.00', '29293995', 1, 1, 14, 2), /* 17 */
('18','2021-07-03 10:45:00', '170.00', '93299995', 3, 6, 15, 5), /* 18 */
('19','2021-09-19 12:10:00', '280.00', '93299995', 3, 5, 15, 4), /* 19 */
('20','2021-10-30 10:45:00', '180.00', '76420995', NULL, 5, 8, 4); /* 20 */

SELECT * FROM Receita;
insert into Receita (id, medicamento, qtd, instrucoes, consulta_id) VALUES
('1', 'Dipirona 50mg e Paracetamol 50mg', '35 gotas de dipirona | 40 gotas de paracetamol', 'Tomar a cada 6 horas', 1), /* 1 */
('2', 'Losartana 100mg e Propafenona 300mg', '2 cápsulas de cada', 'Tomar antes do almoço e jantar', 3), /* 2 */
('3', 'Bromoprida 10mg Deflazacorte 30mg e Norfloxacino 400mg', '1 cápsula de cada', 'Tomar 1 comprimido de cada ao dormir', 5), /* 3 */
('4', 'Isotretinoína 20mg e Ácido Sacílico 30mg', '1 cápsula | 1 pomada', 'Passar o ácido no rosto e tomar 1 comprimido ao dormir e não se expor ao sol', 7),  /* 4 */
('5', 'Fluconazol 150mg e Secnidazol 1000mg', '1 cápsula de cada', 'Tomar antes do almoço uma vez ao dia', 8), /* 5 */
('6', 'Dipirona 50mg Loratadina 100mg e Prednisona 50mg', '35 gotas de dipirona | 1 cápsula de loratadina e prednisona', 'Tomar a cada 12h se sentir coceiras', 9), /* 6 */
('7', 'Systane 50ml e Lacril 50ml', '1 gota em cada olho', 'Aplicar nos olhos a cada 6h', 10), /* 7 */
('8', 'Dipirona 50mg e Prednisona 100mg', '1 cápsula de cada', 'Tomar a cada 7h', 11), /* 8 */
('9', 'Losartana 100mg e Captopril 25mg', '1 cápsula de cada', 'Tomar antes de dormir 1 cápsula', 12), /* 9 */
('10', 'Ácido Retinóico 10mg e Hidroquinona 100mg', '1 cápsula | 1 pomada', 'Passar nas manchas todas as noites durante 15 dias', 19); /* 10 */ 

-- Itens 5, 6, 8
SELECT * FROM Tipo_quarto;
insert into tipo_quarto (descricao, valor_diaria) VALUES
('Apartamento', '150.00'),
('Quarto duplo', '100.00'),
('Enfermaria', '75.00');

SELECT * FROM Quarto;
insert into quarto (numero, tipo_quarto_id) VALUES
('23', 1),
('24', 2),
('25', 3);

SELECT * FROM Internacao;
insert into internacao (data_entrada, data_prev_alta, data_alta, procedimento, medico_id, paciente_id, quarto_id) VALUES
('2016-06-22', '2016-06-27', '2016-06-25', 'Internação por virose', 2, 5, 3), /* 1 */
('2017-08-13', '2017-08-15', '2017-08-16', 'Internação por pneumonia', 2, 5, 2), /* 2 */
('2018-03-10', '2018-03-11', '2018-03-12', 'Internação por pneumonia', 2, 7, 2), /* 3 */
('2018-05-02', '2018-05-05', '2018-05-10', 'Internação por infecção', 7, 15, 1), /* 4 */
('2019-03-23', '2019-03-25', '2019-03-24', 'Internação por infecção', 7, 15, 1), /* 5 */
('2020-01-20', '2020-01-29', '2020-02-03', 'Internação por COVID-19', 10, 12, 1), /* 6 */
('2020-03-19', '2020-03-28', '2020-05-10', 'Internação por COVID-19', 10, 5, 1); /* 7 */

-- Item 7
SELECT * FROM Enfermeiro;
insert into Enfermeiro (nome, cpf, cre) VALUES
('Carla Emilly da Silva', '55429692328', '05429692320'),
('Eloá Mariana Caldeira', '70244441421', '00244441420'),
('Maitê Louise Louise Pereira', '50299273792', '00299273790'),
('Arthur Raul Thomas Drumond', '97048692901', '07048692900'),
('Bento Elias Bento das Neves', '08556903800', '18556903801'),
('Iago Antonio Campos', '84243371660', '04243371661'),
('Kaique Mateus de Paula', '71276905378', '01276905370'),
('Clara Marcela Corte Real', '89010627128', '09010627120'),
('Francisca Bianca Aparecida da Rosa', '94489795688', '04489795680'),
('Melissa Isadora dos Santos', '05034442515', '15034442510');

SELECT * FROM Internacao_enfermeiro;
insert into internacao_enfermeiro (internacao_id, enfermeiro_id) VALUES
(1,1),
(1,2),
(2,3),
(2,4),
(2,5),
(3,1),
(3,6),
(4,7),
(4,8),
(4,9),
(5,10),
(5,7),
(6,3),
(6,2),
(6,5),
(7,10),
(7,6);
