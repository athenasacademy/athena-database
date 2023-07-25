DROP TABLE IF EXISTS contrato;
DROP TABLE IF EXISTS detalhe_contrato;

CREATE TABLE detalhe_contrato (
  id SERIAL PRIMARY KEY,
  codigo_aluno VARCHAR(50) NOT NULL,
  codigo_curso VARCHAR(50) NOT NULL,
  codigo_forma_pagamento VARCHAR(50) NOT NULL,
  data_vencimento_pagamento DATE NOT NULL
);

CREATE TABLE contrato (
  id SERIAL PRIMARY KEY,
  contrato VARCHAR(100) NOT NULL,
  id_detalhe_contrato INTEGER REFERENCES detalhe_contrato(id),
  ativo BOOLEAN NOT NULL DEFAULT true,
  data_cadastro TIMESTAMP DEFAULT NOW(),
  data_alteracao TIMESTAMP
);
