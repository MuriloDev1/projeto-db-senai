SELECT e.tipo_exame, pe.data_exame, pe.resultado
FROM paciente_exame pe
JOIN exame e ON pe.id_exame = e. id_exame
WHERE pe.id_paciente = 1;

SELECT a.id_atendimento, p.nome, m.nome AS medico, a.data_atendimento, a.diagnostico
FROM atendimento a
JOIN paciente p ON a.id_paciente = p.id_paciente
JOIN medico m ON a.id_medico = m.id_medico
WHERE p.nome = 'Maria da Silva';

SELECT r.medicamento, r.posologia, r.duracao
FROM receita r
JOIN atendimento a ON r.id_atendimento = a.id_atendimento
WHERE a.id_paciente = 1;
