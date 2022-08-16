USE uc4atividades;

/* Item 1: Crie um stored procedure que receba id de cliente, data inicial e data final e que mostre a lista de compras realizadas pelo referido cliente entre as datas informadas (incluindo 
essas datas), mostrando nome do cliente, id da compra, total, nome e quantidade de cada produto comprado. No script, inclua o código de criação e uma chamada ao procedure. */

-- Criação procedure
DELIMITER  //
CREATE PROCEDURE consultar_cliente (cliente_id INT, data_inicial DATE, data_final DATE)
	BEGIN
		SELECT c.nome AS Cliente, v.id AS Compra_id, v.valor_total AS Total, i.nome_produto AS Produto, i.quantidade AS Quantidade
		FROM cliente AS c INNER JOIN item_venda AS i INNER JOIN venda AS v 
		ON c.id = v.cliente_id AND v.id = i.venda_id
		WHERE v.data BETWEEN data_inicial AND data_final AND c.id = cliente_id;
	END//
DELIMITER ;

-- Chamada da procedure
CALL consultar_cliente (1, '2019-03-10', '2019-04-25'); 

/* Item 2: Crie uma stored function que receba id de funcionário, data inicial e data final e retorne a comissão total desse funcionário no período indicado. No script, inclua o código de 
criação e uma chamada à function. */

-- Criação da function
DELIMITER //
CREATE FUNCTION fn_calculoComissao (funcionario_id INT, data_inicial DATE, data_final DATE) RETURNS DECIMAL (9,2) DETERMINISTIC  
	BEGIN
		DECLARE v_comissao FLOAT;
        DECLARE v_valor_total DECIMAL (9,2);
        
		SELECT c.comissao, SUM(subtotal) INTO v_comissao, v_valor_total
        FROM funcionario AS f 
        INNER JOIN cargo AS c ON f.cargo_id = c.id 
        INNER JOIN venda AS v ON v.funcionario_id = f.id 
        INNER JOIN item_venda AS i ON v.id = i.venda_id
        WHERE f.id = funcionario_id AND v.data BETWEEN data_inicial AND data_final;

		RETURN v_valor_total * (v_comissao/100);
	END//
DELIMITER ;

-- Chamada da function
SELECT uc4atividades.fn_calculoComissao(2, '2020-05-30', '2022-01-25') AS Comissao;

/* Item 3: Crie uma stored function que receba id de cliente e retorne se o cliente é “PREMIUM” ou “REGULAR”. Um cliente é “PREMIUM” se já realizou mais de R$ 10 mil em compras nos 
últimos dois anos. Um cliente é “REGULAR” se ao contrário. No script, inclua o código de criação e uma chamada à function. */

-- Criação da function
DELIMITER //
CREATE FUNCTION fn_checarCliente (cliente_id INT) RETURNS VARCHAR(45) DETERMINISTIC
	BEGIN
		DECLARE exibir VARCHAR(45);
        DECLARE valorTotal DECIMAL(9,2);
        
        SELECT SUM(v.valor_total) INTO valorTotal
        FROM venda AS v
        INNER JOIN cliente AS c ON v.cliente_id = c.id
        WHERE c.id = cliente_id AND v.data BETWEEN CURDATE() AND DATE_SUB(CURDATE(), INTERVAL 2 YEAR);
        
        IF valorTotal > 10000 THEN
			SET exibir := "PREMIUM";
		ELSE 
			SET exibir := "REGULAR";
		END IF;
        
        RETURN exibir;
        
    END //
DELIMITER ;
		
-- Chamada da function
SELECT uc4atividades.fn_checarCliente(1) AS Cliente;

/* Item 4: Crie um trigger que atue sobre a tabela “usuário” de modo que, ao incluir um novo usuário, aplique automaticamente MD5() à coluna “senha”. */

-- Criação do Trigger
DELIMITER //
CREATE TRIGGER tgr_senha BEFORE INSERT 
ON usuario
FOR EACH ROW
	BEGIN
    SET NEW.senha = MD5(NEW.senha);
END//
DELIMITER ;

-- Testando o Trigger
INSERT INTO usuario (id, login, senha, ultimo_login) values 
(12, "sabrinaslp", "$@brin@13490", "2022-03-10 09:35:20");

SELECT * FROM usuario;

 