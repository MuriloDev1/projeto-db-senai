INSERT INTO paciente (nome, cpf, data_nascimento, sexo, telefone, endereco)
VALUES ('Maria da Silva', '123.456.789-00', '1985-05-10', 'F', '(11) 99999-9999'，'Rua das Flores, 123');
  
INSERT INTO medico (nome, crm, especialidade, telefone)
VALUES ('Dr. João Souza', 'CRM123456', 'Cardiologia', '(11) 98888-8888');

INSERT INTO atendimento (id_paciente, id_medico, data_atendimento, diagnostico)
VALUES (1,1, NOW(), 'Hipertensão controlada');

INSERT INTO exame (tipo_exame, descricao)
VALUES ('Hemograma', 'Exame de sangue completo');

INSERT INTO paciente_exame (id_paciente, id_exame, data_exame, resultado)
VALUES (1,1,'2025-06-10', 'Resultados dentro da normalidade');

INSERT INTO receita (id_atendimento, medicamento, posologia, duracao)
VALUES (1,'Losartana 50mg', '1 comprimido ao dia', '30 dias');
