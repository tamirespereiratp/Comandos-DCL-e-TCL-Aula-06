-- Crie um novo usuário chamado “aluno” com a senha “123456”:
CREATE USER aluno WITH PASSWORD '123456';

-- Conceda ao usuário “aluno” permissões de leitura (SELECT) em uma tabela específica (por exemplo, "MinhaTabela"):
GRANT SELECT ON TABLE books TO aluno;

-- Revogue o acesso de leitura concedido anteriormente:
GRANT INSERT, UPDATE ON ALL TABLES IN SCHEMA public TO aluno;

-- Conceda ao usuário “aluno” permissões de escrita (INSERT e UPDATE) em todas as tabelas de um banco de dados (por exemplo, "BancoDadosExemplo"):
GRANT INSERT, UPDATE ON ALL sql_exercises TO aluno;

-- Exclua o usuário “aluno” do banco de dados:
DROP USER aluno;

-- Crie uma role com permissão de DELETE em uma tabela específica (por exemplo, "OutraTabela") e adicione usuários a ela:
CREATE ROLE user;
GRANT DELETE ON TABLE foods TO user;
GRANT user TO aluno;

-- Conceda acesso de leitura a apenas algumas colunas de uma tabela para a role criada anteriormente:
GRANT SELECT (name, category_id) ON TABLE foods TO user;

-- Conceda permissões a um usuário com a capacidade de repasse de permissões:
GRANT SELECT ON TABLE departmentes TO usuario WITH GRANT OPTION;
