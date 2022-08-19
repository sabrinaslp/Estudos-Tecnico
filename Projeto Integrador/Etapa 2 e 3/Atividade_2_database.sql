-- Criação do Banco de dados (Item 3):
CREATE DATABASE TechMasters;
USE TechMasters;

-- Criação das tabelas:
CREATE TABLE Tecnologia (
idTecnologia INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
PRIMARY KEY (idTecnologia)
);

CREATE TABLE Nivel (
idNivel INT NOT NULL AUTO_INCREMENT,
descricao VARCHAR(100),
PRIMARY KEY (idNivel)
);

CREATE TABLE Mentor (
idMentor INT NOT NULL AUTO_INCREMENT,
tecnologia_id INT NOT NULL,
nome VARCHAR(250),
data_nasc DATE,
cpf VARCHAR(11) NOT NULL,
rg VARCHAR (9) NOT NULL,
email VARCHAR(200),
endereco VARCHAR(250),
graduacao VARCHAR(200),
anos_exp INT, 
fluente_ingles CHAR(1),
PRIMARY KEY (idMentor),
FOREIGN KEY (tecnologia_id) REFERENCES Tecnologia (idTecnologia)
);

CREATE TABLE Projeto (
idProjeto INT NOT NULL AUTO_INCREMENT,
tecnologia_id INT NOT NULL,
nivel_id INT NOT NULL,
mentor_id INT NOT NULL,
descricao VARCHAR(100),
PRIMARY KEY (idProjeto),
FOREIGN KEY (tecnologia_id) REFERENCES Tecnologia (idTecnologia),
FOREIGN KEY (nivel_id) REFERENCES Nivel (idNivel),
FOREIGN KEY (mentor_id) REFERENCES Mentor (idMentor)
);

CREATE TABLE Aprendiz (
idAprendiz INT NOT NULL AUTO_INCREMENT,
tecnologia_id INT NOT NULL,
projeto_id INT NOT NULL,
nome VARCHAR(250),
data_nasc DATE,
cpf VARCHAR(11) NOT NULL,
rg VARCHAR(9) NOT NULL,
email VARCHAR(200),
escolaridade VARCHAR(40),
horas_disponiveis INT,
PRIMARY KEY (idAprendiz),
FOREIGN KEY (tecnologia_id) REFERENCES Tecnologia (idTecnologia),
FOREIGN KEY (projeto_id) REFERENCES Projeto (idProjeto)
);

CREATE TABLE Ajudante (
idAjudante INT NOT NULL AUTO_INCREMENT,
tecnologia_id INT NOT NULL,
nome VARCHAR(250),
data_nasc DATE,
cpf VARCHAR(11) NOT NULL,
rg VARCHAR(9) NOT NULL,
email VARCHAR(200),
fluente_ingles CHAR(1),
anos_exp INT,
PRIMARY KEY (idAjudante),
FOREIGN KEY (tecnologia_id) REFERENCES Tecnologia (idTecnologia)
);

CREATE TABLE Nivel_ajudante (
idNivel_ajudante INT NOT NULL AUTO_INCREMENT,
ajudante_id INT NOT NULL,
nivel_id INT NOT NULL,
PRIMARY KEY (idNivel_ajudante),
FOREIGN KEY (ajudante_id) REFERENCES Ajudante (idAjudante),
FOREIGN KEY (nivel_id) REFERENCES Nivel (idNivel)
);

CREATE TABLE Material (
idMaterial INT NOT NULL AUTO_INCREMENT,
projeto_id INT NOT NULL,
descricao VARCHAR(100),
PRIMARY KEY (idMaterial),
FOREIGN KEY (projeto_id) REFERENCES Projeto (idProjeto)
);

CREATE TABLE Forum (
idForum INT NOT NULL AUTO_INCREMENT,
projeto_id INT NOT NULL,
descricao VARCHAR(100),
PRIMARY KEY (idForum),
FOREIGN KEY (projeto_id) REFERENCES Projeto (idProjeto)
);


