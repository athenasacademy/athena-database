-- usuario
DROP TABLE IF EXISTS detalhe_usuario;
DROP TABLE IF EXISTS usuario;
DROP TABLE IF EXISTS perfil;

CREATE TABLE perfil (
  id SERIAL PRIMARY KEY,
  perfil VARCHAR(100) NOT NULL,
  descricao_perfil TEXT,
  ativo BOOLEAN NOT NULL DEFAULT true,
  data_cadastro TIMESTAMP DEFAULT NOW(),
  data_alteracao TIMESTAMP
);

CREATE TABLE usuario (
  id SERIAL PRIMARY KEY,
  usuario VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  senha_hash VARCHAR(100) NOT NULL,
  id_perfil INTEGER REFERENCES perfil(id),
  ativo BOOLEAN NOT NULL DEFAULT true,
  data_cadastro TIMESTAMP DEFAULT NOW(),
  data_alteracao TIMESTAMP
);

CREATE TABLE detalhe_usuario (
  id SERIAL PRIMARY KEY,
  id_usuario INTEGER REFERENCES usuario(id),
  confirmou_email BOOLEAN NOT NULL DEFAULT false,
  data_confirmou_email TIMESTAMP,
  data_cadastro TIMESTAMP DEFAULT NOW(),
  data_alteracao TIMESTAMP
);

--curso
DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS curso;
DROP TABLE IF EXISTS area_conhecimento;

CREATE TABLE area_conhecimento (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  ativo BOOLEAN NOT NULL DEFAULT true,
  data_cadastro TIMESTAMP DEFAULT NOW(),
  data_alteracao TIMESTAMP
);

CREATE TABLE curso (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  carga_horaria INTEGER,
  id_area_conhecimento INTEGER REFERENCES area_conhecimento(id),
  ativo BOOLEAN NOT NULL DEFAULT true,
  data_cadastro TIMESTAMP DEFAULT NOW(),
  data_alteracao TIMESTAMP
);

CREATE TABLE disciplina (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT,
  carga_horaria INTEGER,
  id_curso INTEGER REFERENCES curso(id),
  ativo BOOLEAN NOT NULL DEFAULT true,
  data_cadastro TIMESTAMP DEFAULT NOW(),
  data_alteracao TIMESTAMP
);

--inscricao
DROP TABLE IF EXISTS inscricao_candidato;
DROP SEQUENCE IF EXISTS codigo_inscricao_seq;

CREATE SEQUENCE codigo_inscricao_seq START 12345;

CREATE TABLE inscricao_candidato (
  id SERIAL PRIMARY KEY,
  codigo_inscricao INTEGER DEFAULT nextval('codigo_inscricao_seq') NOT NULL,
  data_inscricao DATE NOT NULL,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  telefone VARCHAR(20),
  codigo_curso VARCHAR(50),
  nome_curso VARCHAR(100),
  boleto VARCHAR(100),
  boleto_pago BOOLEAN
);


--aluno 
DROP TABLE IF EXISTS detalhe_aluno;
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

CREATE TABLE detalhe_aluno (
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

--matricula
DROP TABLE IF EXISTS contrato_matricula_aluno;
DROP TABLE IF EXISTS matricula_aluno;

DROP SEQUENCE IF EXISTS matricula_seq;
DROP SEQUENCE IF EXISTS contrato_seq;

CREATE SEQUENCE matricula_seq START 45678;
CREATE SEQUENCE contrato_seq START 98765;

CREATE TABLE matricula_aluno (
    id SERIAL PRIMARY KEY,
    matricula INTEGER DEFAULT nextval('matricula_seq'),
    ativa BOOLEAN NOT null default false,
    codigo_aluno INTEGER NOT NULL,
    nome_aluno VARCHAR(100) NOT NULL,
    data_matricula DATE NULL
);

CREATE TABLE contrato_matricula_aluno (
    id SERIAL PRIMARY KEY,
    id_matricula INTEGER REFERENCES matricula_aluno (id),
    contrato INTEGER DEFAULT nextval('contrato_seq'),
    assinado BOOLEAN NOT null default false,
    forma_pagamento VARCHAR(50) NOT NULL,
    valor_contrato NUMERIC(10, 2) NOT NULL,
	contrato_matricula VARCHAR(50),
    data_aceite DATE null
);

--certificado
DROP TABLE IF EXISTS certificado;

CREATE TABLE certificado (
  id SERIAL PRIMARY KEY,
  nome_aluno VARCHAR(100) NOT NULL,
  matricula VARCHAR(50) NOT NULL,
  nome_curso VARCHAR(100) NOT NULL,
  codido_curso VARCHAR(50) NOT NULL,
  carga_horaria_curso INTEGER NOT NULL,
  aproveitamento NUMERIC(5, 2) NOT NULL,
  data_conclusao DATE NOT NULL,
  gerado BOOLEAN NOT NULL DEFAULT false,
  caminho_certificado_pdf TEXT,
  caminho_certificado_png TEXT
);
