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

select * from inscricao_candidato
