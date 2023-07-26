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
    data_matricula DATE NOT NULL,
    codigo_contrato INTEGER NOT NULL
);

CREATE TABLE contrato_matricula_aluno (
    id SERIAL PRIMARY KEY,
    id_matricula INTEGER REFERENCES matricula_aluno (id),
    contrato INTEGER DEFAULT nextval('contrato_seq'),
    assinado BOOLEAN NOT null default false,
    forma_pagamento VARCHAR(50) NOT NULL,
    valor_contrato NUMERIC(10, 2) NOT NULL,
    data_aceite DATE NOT NULL
);
