DROP TABLE IF EXISTS detalhe;
DROP TABLE IF EXISTS telefone;
DROP TABLE IF EXISTS endereco;
DROP TABLE IF EXISTS aluno CASCADE;

CREATE TABLE aluno (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  sobrenome VARCHAR(100) NOT NULL,
  cpf VARCHAR(14) NOT NULL,
  sexo CHAR(1) NOT NULL,
  data_nascimento DATE NOT NULL,
  email VARCHAR(100) NOT NULL,
  ativo BOOLEAN NOT NULL DEFAULT true,
    data_cadastro TIMESTAMP DEFAULT NOW()
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

CREATE TABLE detalhe (
  id SERIAL PRIMARY KEY,
  id_aluno INTEGER REFERENCES aluno(id),
  codigo_usuario INTEGER NOT NULL,
  data_usuario DATE NOT NULL,
  codigo_inscricao INTEGER NOT NULL,
  data_inscricao DATE NOT NULL,
  codigo_curso INTEGER NOT null,
  codigo_matricula INTEGER,
  data_matricula DATE,
  codigo_contrato INTEGER,
  data_contrato DATE
);
