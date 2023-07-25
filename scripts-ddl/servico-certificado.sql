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
  gerado BOOLEAN NOT NULL DEFAULT false
  caminho_certificado_pdf TEXT,
  caminho_certificado_png TEXT
);
