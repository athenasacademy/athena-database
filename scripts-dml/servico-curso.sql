INSERT INTO area_conhecimento (nome, descricao, ativo, data_cadastro) VALUES
  ('Cloud', 'Área de conhecimento relacionada a serviços e tecnologias de nuvem.', true, NOW()),
  ('Desenvolvimento Back-End', 'Área de conhecimento voltada para o desenvolvimento de sistemas e aplicativos do lado do servidor.', true, NOW()),
  ('Desenvolvimento Front-End', 'Área de conhecimento focada no desenvolvimento de interfaces e interações de usuário no lado do cliente.', true, NOW()),
  ('UX Designer', 'Área de conhecimento relacionada à experiência do usuário e design centrado no usuário.', true, NOW()),
  ('UI Designer', 'Área de conhecimento voltada para o design da interface do usuário.', true, NOW()),
  ('Product Design', 'Área de conhecimento focada no design de produtos e suas características.', true, NOW()),
  ('DevOps', 'Área de conhecimento relacionada à integração entre equipes de desenvolvimento e operações de TI.', true, NOW());

INSERT INTO curso (nome, descricao, carga_horaria, id_area_conhecimento, ativo, data_cadastro) VALUES
  ('Curso de Computação em Nuvem', 'Introdução aos conceitos e práticas de computação em nuvem.', 120, 1, true, NOW()),
  ('Desenvolvimento Web com Node.js', 'Aprenda a desenvolver aplicações web utilizando Node.js.', 160, 2, true, NOW()),
  ('Front-End Avançado com React', 'Aprofunde seus conhecimentos em desenvolvimento front-end com React.', 180, 3, true, NOW()),
  ('Introdução ao UX Design', 'Princípios básicos de experiência do usuário e design centrado no usuário.', 40, 4, true, NOW()),
  ('Design de Interfaces', 'Aprenda a criar interfaces atraentes e intuitivas.', 60, 5, true, NOW()),
  ('Product Design Estratégico', 'Conceitos de design de produtos com foco em estratégia e inovação.', 100, 6, true, NOW()),
  ('Introdução ao DevOps', 'Práticas e ferramentas para integração entre desenvolvimento e operações.', 80, 7, true, NOW());

INSERT INTO disciplina (nome, descricao, carga_horaria, id_curso, ativo, data_cadastro) VALUES
  ('Fundamentos de Cloud Computing', 'Introdução aos conceitos fundamentais de computação em nuvem.', 30, 1, true, NOW()),
  ('Gerenciamento de Recursos na Nuvem', 'Práticas para gerenciar recursos e serviços em ambientes de nuvem.', 40, 1, true, NOW()),
  ('Desenvolvimento de Aplicações Serverless', 'Aprenda a desenvolver aplicações utilizando arquiteturas serverless.', 50, 1, true, NOW()),
  ('Segurança em Ambientes de Nuvem', 'Princípios e boas práticas de segurança em ambientes de computação em nuvem.', 30, 1, true, NOW()),
  ('Introdução ao DevOps', 'Práticas e ferramentas para integração entre desenvolvimento e operações.', 40, 1, true, NOW()),

  ('Node.js para Servidores', 'Conceitos e práticas de desenvolvimento back-end com Node.js.', 40, 2, true, NOW()),
  ('Express.js e RESTful APIs', 'Desenvolvimento de APIs RESTful utilizando o framework Express.js.', 50, 2, true, NOW()),
  ('Banco de Dados com MongoDB', 'Introdução ao uso do banco de dados NoSQL MongoDB.', 30, 2, true, NOW()),
  ('Testes Automatizados em Node.js', 'Práticas de testes automatizados em aplicações Node.js.', 20, 2, true, NOW()),
  ('Segurança em Aplicações Web', 'Princípios e técnicas de segurança em aplicações web.', 20, 2, true, NOW()),

  ('React Fundamentals', 'Introdução aos conceitos fundamentais do framework React.', 30, 3, true, NOW()),
  ('Componentização e Reutilização de Código', 'Desenvolvimento de componentes reutilizáveis em React.', 40, 3, true, NOW()),
  ('Gerenciamento de Estado com Redux', 'Gerenciamento de estado global de aplicações com Redux.', 50, 3, true, NOW()),
  ('Testes de Unidade em React', 'Práticas de testes de unidade em componentes React.', 20, 3, true, NOW()),
  ('Performance e Otimização em React', 'Princípios de performance e otimização de aplicações React.', 40, 3, true, NOW()),

  ('UX Design Thinking', 'Introdução ao design thinking aplicado à experiência do usuário.', 20, 4, true, NOW()),
  ('Pesquisa de Usuários', 'Técnicas e métodos de pesquisa para entender as necessidades dos usuários.', 30, 4, true, NOW()),
  ('Arquitetura da Informação', 'Organização e estruturação de informações em interfaces.', 40, 4, true, NOW()),
  ('Design de Interação', 'Desenvolvimento de interações e fluxos em interfaces.', 50, 4, true, NOW()),
  ('Testes de Usabilidade', 'Métodos e práticas de testes de usabilidade em protótipos e produtos.', 20, 4, true, NOW()),

  ('Princípios de UI Design', 'Introdução aos princípios e conceitos do design de interface do usuário.', 30, 5, true, NOW()),
  ('Tipografia e Hierarquia Visual', 'Uso da tipografia e organização visual em interfaces.', 40, 5, true, NOW()),
  ('Cores e Paletas de Cores', 'Princípios e técnicas de escolha de cores para interfaces.', 30, 5, true, NOW()),
  ('Grid e Layouts Responsivos', 'Desenvolvimento de layouts responsivos utilizando grids.', 40, 5, true, NOW()),
  ('Microinterações e Animações', 'Desenvolvimento de microinterações e animações em interfaces.', 30, 5, true, NOW()),

  ('Design Thinking para Produtos', 'Métodos de design thinking aplicados ao desenvolvimento de produtos.', 50, 6, true, NOW()),
  ('Estratégias de Inovação', 'Estratégias para a inovação de produtos e serviços.', 40, 6, true, NOW()),
  ('Prototipagem e MVP', 'Desenvolvimento de protótipos e Minimum Viable Products (MVP).', 30, 6, true, NOW()),
  ('Testes e Validação de Produtos', 'Práticas de testes e validação de produtos junto aos usuários.', 40, 6, true, NOW()),
  ('Design Centrado no Usuário', 'Desenvolvimento de produtos centrados nas necessidades dos usuários.', 60, 6, true, NOW()),

  ('Introdução ao DevOps', 'Práticas e ferramentas para integração entre desenvolvimento e operações.', 40, 7, true, NOW()),
  ('Ferramentas de Automação', 'Utilização de ferramentas de automação de infraestrutura e deployment.', 50, 7, true, NOW()),
  ('Cultura DevOps', 'Cultura e práticas de colaboração entre desenvolvimento e operações.', 30, 7, true, NOW()),
  ('Monitoramento e Métricas', 'Monitoramento de aplicações e coleta de métricas em ambientes DevOps.', 40, 7, true, NOW()),
  ('Segurança em Ambientes DevOps', 'Princípios e práticas de segurança em ambientes de desenvolvimento e operações.', 30, 7, true, NOW());
