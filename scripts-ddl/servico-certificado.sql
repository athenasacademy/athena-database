-- Exclusão da tabela, caso já exista
DROP TABLE IF EXISTS certificado;

-- Criação da tabela certificado
CREATE TABLE certificado (
  id SERIAL PRIMARY KEY,
  nome_aluno VARCHAR(100) NOT NULL,
  nome_curso VARCHAR(100) NOT NULL,
  carga_horaria_curso INTEGER NOT NULL,
  matricula VARCHAR(50) NOT NULL,
  aproveitamento NUMERIC(5, 2) NOT NULL,
  data_conclusao DATE NOT NULL,
  caminho_certificado_pdf TEXT,
  caminho_certificado_png TEXT
);
