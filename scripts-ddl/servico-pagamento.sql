DROP TABLE IF EXISTS boleto_pagamento;
DROP TABLE IF EXISTS boleto;

CREATE TABLE boleto (
  id SERIAL PRIMARY KEY,
  valor NUMERIC(10, 2) NOT NULL,
  banco VARCHAR(50) NOT NULL,
  vencimento DATE NOT NULL,
  ativo BOOLEAN NOT NULL DEFAULT true,
  data_cadastro TIMESTAMP DEFAULT NOW(),
  data_alteracao TIMESTAMP
);

CREATE TABLE boleto_pagamento (
  id SERIAL PRIMARY KEY,
  id_boleto INTEGER REFERENCES boleto(id),
  pago BOOLEAN NOT NULL DEFAULT false,
  data_pagamento DATE,
  valor_pago NUMERIC(10, 2)
);
