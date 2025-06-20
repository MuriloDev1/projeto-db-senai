### Processo DTL
-- Visualiza o nome original do paciente id = 1
SELECT nome FROM paciente WHERE id_paciente = 1;

-- Inicia transação
BEGIN 

-- Atualiza o nome do paciente id = 1
UPDATE paciente
WHERE nome = 'Teste de Nome'
WHERE id_paciente = 1;

-- Consulta após atualização
SELECT nome FROM paciente WHERE id_paciente = 1;

-- Cancela Transação
ROLLBACK

-- Consulta novamente com o nome original
SELECT nome FROM paciente WHERE id_paciente  = 1;
