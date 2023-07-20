DROP TABLE IF EXISTS candidato;

CREATE TABLE candidato (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  codigo_inscricao VARCHAR(20) NOT NULL,
  curso_interesse VARCHAR(100),
  data_inscricao DATE NOT NULL,
  curso VARCHAR(100),
  boleto VARCHAR(100)
);
