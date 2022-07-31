USE uc4atividades;

/* Item 1: Crie um usuário específico para relatórios. Crie role para ele, com acesso apenas à consulta em tabelas (nem dados, nem estrutura podem ser alterados). */
CREATE USER 'relatorios'@'localhost' IDENTIFIED BY 'r3lat0r1os@'; 
SELECT * FROM mysql.user;

CREATE ROLE 'app_relatorio';
GRANT SELECT ON uc4atividades.* TO 'app_relatorio';

GRANT 'app_relatorio' TO 'relatorios'@'localhost';
SELECT * FROM mysql.user;

FLUSH PRIVILEGES; 
SHOW GRANTS FOR app_relatorio; 

/* Item 2: Crie usuário e role para funcionário, o qual pode manipular as tabelas de venda, cliente e produto, mas não deve ter acesso (nem para consulta) a funcionário e 
cargo e não deve ser capaz de realizar alterações de estrutura em nenhuma tabela. */

CREATE USER 'funcionarios'@'localhost' IDENTIFIED BY 'func10n4r105@'; 
SELECT * FROM mysql.user;

CREATE ROLE 'app_funcionario';
GRANT INSERT, UPDATE, DELETE, SELECT ON uc4atividades.venda TO 'app_funcionario';
GRANT INSERT, UPDATE, DELETE, SELECT ON uc4atividades.cliente TO 'app_funcionario';
GRANT INSERT, UPDATE, DELETE, SELECT ON uc4atividades.produto TO 'app_funcionario';

GRANT 'app_funcionario' TO 'funcionarios'@'localhost';
FLUSH PRIVILEGES; 
SELECT * FROM mysql.user;

/* Item 3: Escolha um método de criptografia ou hash para aplicar às senhas dos usuários. Atualize a tabela “usuário” aplicando a criptografia ou hash ao campo de senha 
em todos os registros. */
UPDATE usuario SET senha = sha1('12345') WHERE id = 1;
UPDATE usuario SET senha = sha1('67890') WHERE id = 2;
UPDATE usuario SET senha = sha1('1q2w3e') WHERE id = 3;
UPDATE usuario SET senha = sha1('sil123') WHERE id = 4;
UPDATE usuario SET senha = sha1('ama123') WHERE id = 5;
UPDATE usuario SET senha = sha1('mar123') WHERE id = 6;
UPDATE usuario SET senha = sha1('dom123') WHERE id = 7;
UPDATE usuario SET senha = sha1('mar123') WHERE id = 8;
UPDATE usuario SET senha = sha1('joa123') WHERE id = 9;
UPDATE usuario SET senha = sha1('apa123') WHERE id = 10;
UPDATE usuario SET senha = sha1('fil123') WHERE id = 11;

SELECT * FROM usuario;



 
 
