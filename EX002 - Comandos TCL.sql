-- Criação da tabela "estoque"
CREATE TABLE estoque (
    id SERIAL PRIMARY KEY,
    produto VARCHAR(255),
    quantidade INTEGER
);

-- Início da transação
BEGIN;

-- Atualiza a quantidade do produto com ID igual a 1, subtraindo 10 unidades do estoque atual
UPDATE estoque SET quantidade = quantidade - 10 WHERE id = 1;

-- Verifica a quantidade atual do produto com ID igual a 1
SELECT quantidade FROM estoque WHERE id = 1;

-- Se a quantidade for maior ou igual a 0, comita a transação. Caso contrário, desfaça a transação.
COMMIT;