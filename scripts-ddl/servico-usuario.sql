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
  id_detalhe_usuario INTEGER REFERENCES detalhe_usuario(id),
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