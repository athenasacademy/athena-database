DROP TABLE IF EXISTS aluno_detalhes;
DROP TABLE IF EXISTS endereco;
DROP TABLE IF EXISTS telefone;
DROP TABLE IF EXISTS aluno;

CREATE TABLE aluno (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  sobrenome VARCHAR(100) NOT NULL,
  cpf VARCHAR(11) NOT NULL,
  sexo CHAR(1) NOT NULL,
  data_nascimento DATE NOT NULL,
  email VARCHAR(100) NOT NULL,
  data_inscricao DATE NOT NULL,
  ativo BOOLEAN NOT NULL DEFAULT true
);

CREATE TABLE endereco (
  id SERIAL PRIMARY KEY,
  id_aluno INTEGER REFERENCES aluno(id),
  logradouro VARCHAR(100),
  numero VARCHAR(10),
  complemento VARCHAR(100),
  bairro VARCHAR(100),
  localidade VARCHAR(100),
  uf CHAR(2),
  cep VARCHAR(10),
  ativo BOOLEAN NOT NULL DEFAULT true,
  data_cadastro TIMESTAMP DEFAULT NOW()
);

CREATE TABLE telefone (
  id SERIAL PRIMARY KEY,
  id_aluno INTEGER REFERENCES aluno(id),
  telefone_residencial VARCHAR(20),
  telefone_celular VARCHAR(20),
  telefone_recado VARCHAR(20)
);

CREATE TABLE aluno_detalhes (
  id SERIAL PRIMARY KEY,
  id_aluno INTEGER REFERENCES aluno(id),
  codigo_contrato VARCHAR(50),
  codigo_inscricao VARCHAR(50),
  data_matricula DATE,
  codigo_matricula VARCHAR(50),
  codigo_usuario VARCHAR(50)
);
