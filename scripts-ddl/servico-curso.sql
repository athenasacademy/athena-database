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
