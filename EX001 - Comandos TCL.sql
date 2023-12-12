-- Criação da tabela "contas"
CREATE TABLE contas (
    id SERIAL PRIMARY KEY,
    cliente VARCHAR(255),
    saldo DECIMAL(10, 2)
);

-- Início da primeira transação
BEGIN;

-- Atualiza o saldo da conta do cliente com ID igual a 1, adicionando 500 ao saldo atual
UPDATE contas SET saldo = saldo + 500 WHERE id = 1;

-- Verifica o saldo atual da conta do cliente com ID igual a 1
SELECT saldo FROM contas WHERE id = 1;

-- Se o saldo for superior a 1000, comita a transação. Caso contrário, desfaça a transação.
COMMIT;

-- Início da segunda transação
BEGIN;

-- Insere uma nova conta na tabela "contas" com o nome do cliente "João" e saldo inicial de 1000
INSERT INTO contas (cliente, saldo) VALUES ('João', 1000);

-- Atualiza o saldo da conta recém-criada, subtraindo 200
UPDATE contas SET saldo = saldo - 200 WHERE cliente = 'João';

-- Verifica o saldo atual da conta recém-criada
SELECT saldo FROM contas WHERE cliente = 'João';

-- Se o saldo for positivo, comita a transação. Caso contrário, desfaça a transação.
COMMIT; 
