# Projeto Final – Banco de Dados Relacional

## Objetivo
Este repositório contém o projeto final da disciplina de Banco de Dados Relacional. O objetivo é aplicar os conceitos estudados, incluindo modelagem, normalização e manipulação de dados utilizando DDL, DML, DQL — com bonificação para comandos DCL e DTL.

## Estrutura do Projeto

## Tema do Projeto
**Sistema de Gerenciamento de Saúde**
Este projeto tem como objetivo criar um banco de dados relacional para um sistema que ajude no gerenciamento de uma unidade de saúde. A ideia é organizar as informações de pacientes, médicos, agendamentos, atendimentos, exames e receitas médicas de forma prática e eficiente.
Com esse sistema, será possível registrar e consultar dados com mais facilidade, melhorando o controle e o funcionamento da unidade de saúde. Além disso, ele ajuda a tornar o atendimento mais rápido e organizado, tanto para os profissionais quanto para os pacientes.

## Integrantes do Grupo
- Julio Coronetti Regino 
- Murilo Antunes da Silva Galhardo de Carvalho  
- Paola de Oliveira

## Modelagem de Dados

### Entidades:
- Paciente (id_paciente, nome, CPF, data_nascimento, sexo, telefone, endereço)
- Médico (id_medico, nome, CRM, especialidade, telefone)
- Atendimento (id_atendimento, id_paciente, id_medico, data_atendimento, diagnóstico)
- Agendamento (id_agendamento, id_paciente, id_medico, data_agendada, status)
- Exame (id_exame, tipo_exame, descricao)
- Paciente_Exame (id_paciente_exame, id_paciente, id_exame, data_exame, resultado)
- Receita (id_receita, id_atendimento, medicamento, posologia, duracao)

### Relacionamentos:
- Um paciente pode ter vários agendamentos, atendimentos e exames.
- Um médico pode realizar vários atendimentos e ter vários agendamentos.
- Um atendimento pode gerar uma ou mais receitas.
- Um exame pode ser feito por vários pacientes.

### Diagrama Entidade-Relacionamento (DER)
--- IMAGEM --- 

### Normalização

- Sem atributos multivalorados.
- Sem dependências transitivas.
- Chave primária bem definida em todas as tabelas.

### Scripts SQL

### DDL – Criação das Tabelas
 [📘 DDL](./sql/ddl.sql)
### DML – Manipulação de Dados
[📘 DML](./sql/dml.sql)
### DQL – Consultas
[📘 DQL](./sql/dql.sql)
### DCL - Linguagem de Controle de Dados
[📘 DCL](./sql/dcl.sql)
### DTL - Linguagem de Transação de Dados
[📘 DTL](./sql/dtl.sql)

## Documentação

Está estruturada conforme as normas da ABNT, contendo:

- Introdução
- Modelagem conceitual e lógica
- Scripts comentados
- Conclusão e referências

[📘 Projeto - Banco de Dados (PDF)](./Projeto%20-%20Banco%20de%20Dados.pdf)

## Requisitos Técnicos

- PostgreSQL
- PgAdmin (opcional)
- Ferramentas utilizadas:
PostgreSQL, MySQl e dbdiagram.io.
