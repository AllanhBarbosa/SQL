-- Criação do banco de dados "Serasa"
CREATE DATABASE IF NOT EXISTS serasa;

-- Seleciona o banco de dados "Serasa" para utilizá-lo
USE serasa;

-- Criação da tabela "empregado"
CREATE TABLE IF NOT EXISTS empregado (
    codigo INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    depto INT, 
    salario DECIMAL(10,2) NOT NULL
);

-- Inserção de dados na tabela "empregado"
INSERT INTO empregado (codigo, nome, depto, salario)
VALUES
(43500, 'Ana da Silva', 9411, 5200.00),
(43501, 'Vitoria Beatriz', 9411, 3400.00),
(43502, 'Pedro José', 9412, 2600.00),
(43503, 'Amary Manoel', 9412, 8400.00),
(43504, 'Carlos Silva', 9412, 5600.00),
(43505, 'Vitorio Cardoso', 9413, 2300.00),
(43506, 'Carlos Ives Souza', 9413, 3380.00),
(43507, 'Victor Silva', 9413, 4500.00),
(43508, 'Saulo Monteiro', 9413, 6800.00);

-- Altera o departamento de todos para 9414
UPDATE empregado
SET depto = 9414
WHERE depto BETWEEN 9411 AND 9413;

-- Altera o departamento dos três primeiros registros para 9415
UPDATE empregado
SET depto = 9415
WHERE codigo IN (43500, 43501, 43502);

-- Altera o departamento de cada um para o valor original novamente
UPDATE empregado
SET depto = CASE 
    WHEN codigo = 43500 THEN 9411
    WHEN codigo = 43501 THEN 9411
    WHEN codigo = 43502 THEN 9412
    WHEN codigo = 43503 THEN 9412
    WHEN codigo = 43504 THEN 9412
    WHEN codigo = 43505 THEN 9413
    WHEN codigo = 43506 THEN 9413
    WHEN codigo = 43507 THEN 9413
    WHEN codigo = 43508 THEN 9413
END;

-- Realiza um SELECT para todos os dados da tabela "empregado"
SELECT * FROM empregado;

-- Realiza um SELECT da coluna "nome" onde o salário for igual a R$ 6800,00
SELECT nome FROM empregado WHERE salario = 6800.00;

-- Realiza um SELECT das colunas "codigo" e "nome" onde o salário for igual a R$ 5200,00
SELECT codigo, nome FROM empregado WHERE salario = 5200.00;

-- Realiza um SELECT da coluna "depto" onde o salário for maior que R$ 3000,00 e menor que R$ 5500,00
SELECT depto FROM empregado WHERE salario > 3000 AND salario < 5500;

-- Realiza um SELECT das colunas "codigo" e "depto" onde o salário estiver entre R$ 2600,00 e R$ 3380,00
SELECT codigo, depto FROM empregado WHERE salario BETWEEN 2600.00 AND 3380.00;

-- Realiza um SELECT da coluna "nome" onde o depto for 9411 ou 9412
SELECT nome FROM empregado WHERE depto IN (9411, 9412);

-- Realiza um SELECT das colunas "depto", "salario" e "nome" onde o código for 43500 ou 43502
SELECT depto, salario, nome FROM empregado WHERE codigo IN (43500, 43502);

-- Realiza um SELECT SUM de todos os salários da tabela
SELECT SUM(salario) AS total_salarios FROM empregado;