CREATE DATABASE atividade2;

USE atividade2;

CREATE TABLE Medico (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(250),
data_nasc DATE,
cpf VARCHAR(11) NOT NULL,
crm VARCHAR(6) NOT NULL,
uf CHAR(2),
nivel VARCHAR(200),
telefone VARCHAR(11),
endereco VARCHAR(250),
PRIMARY KEY (id)
);

CREATE TABLE Tipo_quarto (
id INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(250),
valor_diaria INT,
PRIMARY KEY (id)
);

CREATE TABLE Quarto (
id int NOT NULL AUTO_INCREMENT,
numero INT,
tipo_quarto_id INT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Internacao (
id INT NOT NULL AUTO_INCREMENT,
data_entrada DATE,
data_prev_alta DATE,
data_alta DATE,
procedimento LONGTEXT,
medico_id INT NOT NULL,
paciente_id INT NOT NULL,
quarto_id INT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Internacao_enfermeiro (
id INT NOT NULL AUTO_INCREMENT,
internacao_id INT NOT NULL,
enfermeiro_id INT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Enfermeiro (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(250),
cpf VARCHAR(11),
cre VARCHAR(11),
PRIMARY KEY (id)
);

CREATE TABLE Paciente (
id INT NOT NULL AUTO_INCREMENT,
convenio_id INT,
nome VARCHAR(250),
data_nasc DATE,
endereco VARCHAR(250),
telefone VARCHAR(11),
email VARCHAR(200),
cpf VARCHAR(11) NOT NULL,
rg VARCHAR(9) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Convenio (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(250),
CNPJ VARCHAR(14),
tempo_carencia VARCHAR(45),
PRIMARY KEY (id)
);

CREATE TABLE Consulta (
id INT NOT NULL AUTO_INCREMENT,
data_horario VARCHAR(45),
valor INT,
num_carteira INT,
convenio_id INT NOT NULL,
medico_id INT NOT NULL,
paciente_id INT NOT NULL,
medico_especialidade INT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Receita (
id INT NOT NULL AUTO_INCREMENT,
medicamento VARCHAR(250),
qtd VARCHAR(250),
instrucoes VARCHAR(250),
consulta_id INT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE Medico_especialidade_has_medico (
id INT NOT NULL AUTO_INCREMENT,
medico_especialidade_id INT NOT NULL,
medico_id INT NOT NULL, 
PRIMARY KEY (id)
);

CREATE TABLE Medico_especialidade (
id INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(45),
PRIMARY KEY (id)
);

-- Relacionamento entre Tipo_quarto x Quarto
ALTER TABLE Quarto ADD FOREIGN KEY (tipo_quarto_id) REFERENCES Tipo_quarto (id);

-- Relacionamentos da coluna Internacao
ALTER TABLE Internacao ADD FOREIGN KEY (medico_id) REFERENCES Medico (id);
ALTER TABLE Internacao ADD FOREIGN KEY (paciente_id) REFERENCES Paciente (id);
ALTER TABLE Internacao ADD FOREIGN KEY (quarto_id) REFERENCES Quarto (id);

ALTER TABLE Internacao_enfermeiro ADD FOREIGN KEY (internacao_id) REFERENCES Internacao (id);
ALTER TABLE Internacao_enfermeiro ADD FOREIGN KEY (enfermeiro_id) REFERENCES Enfermeiro (id);

-- Relacionamentos da coluna Consulta
ALTER TABLE Consulta ADD FOREIGN KEY (convenio_id) REFERENCES Convenio (id);
ALTER TABLE Consulta ADD FOREIGN KEY (medico_id) REFERENCES Medico (id);
ALTER TABLE Consulta ADD FOREIGN KEY (paciente_id) REFERENCES Paciente (id);

ALTER TABLE Consulta DROP COLUMN medico_especialidade;
ALTER TABLE Consulta ADD medico_especialidade_id INT NOT NULL;

ALTER TABLE Consulta ADD FOREIGN KEY (medico_especialidade_id) REFERENCES Medico_especialidade (id);

-- Relacionamento entre medico e especialidade
ALTER TABLE Medico_especialidade_has_medico ADD FOREIGN KEY (medico_especialidade_id) REFERENCES Medico_especialidade (id);
ALTER TABLE Medico_especialidade_has_medico ADD FOREIGN KEY (medico_id) REFERENCES Medico (id);

-- Relacionamento entre receita e consulta
ALTER TABLE Receita ADD FOREIGN KEY (consulta_id) REFERENCES Consulta (id);

ALTER TABLE Consulta MODIFY COLUMN data_horario DATETIME;

-- Relacionamento entre paciente e convênio
ALTER TABLE Paciente ADD FOREIGN KEY (convenio_id) REFERENCES Convenio (id);








