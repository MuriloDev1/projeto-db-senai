CREATE TABLE paciente (
  id_paciente SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(14) UNIQUE NOT NULL,
  data_nascimento DATE NOT NULL,
  sexo CHAR(1) NOT NULL,
  telefone VARCHAR(15),
  endereco VARCHAR(255)
);

CREATE TABLE medico (
  id_medico SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  crm VARCHAR(15) UNIQUE NOT NULL,
  especialidade VARCHAR(50),
  telefone VARCHAR(15)
);

CREATE TABLE atendimento (
  id_atendimento SERIAL PRIMARY KEY,
  id_paciente INT NOT NULL,
  id_medico INT NOT NULL,
  data_atendimento TIMESTAMP NOT NULL,
  diagnostico VARCHAR(255),
  FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
  FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);

CREATE TABLE agendamento (
  id_agendamento SERIAL PRIMARY KEY,
  id_paciente INT NOT NULL,
  id_medico INT NOT NULL,
  data_agendada TIMESTAMP NOT NULL,
  status VARCHAR(20),
  FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
  FOREIGN KEY (id_medico) REFERENCES medico(id_medico)
);

CREATE TABLE exame (
  id_exame SERIAL PRIMARY KEY,
  tipo_exame VARCHAR(50) NOT NULL,
  descricao VARCHAR(255)
);

CREATE TABLE paciente_exame (
  id_paciente_exame SERIAL PRIMARY KEY,
  id_paciente INT NOT NULL,
  id_exame INT NOT NULL,
  data_exame DATE NOT NULL,
  resultado VARCHAR(255),
  FOREIGN KEY (id_paciente) REFERENCES paciente(id_paciente),
  FOREIGN KEY (id_exame) REFERENCES exame(id_exame)
);

CREATE TABLE receita (
  id_receita SERIAL PRIMARY KEY,
  id_atendimento INT NOT NULL,
  medicamento VARCHAR(100) NOT NULL,
  posologia VARCHAR(255),
  duracao VARCHAR(30),
  FOREIGN KEY (id_atendimento) REFERENCES atendimento(id_atendimento)
);
