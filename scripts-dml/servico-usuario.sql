INSERT INTO perfil (perfil, descricao_perfil) VALUES
  ('Administrador', 'Perfil para usuários administradores.'),
  ('Usuario', 'Perfil para usuários comuns.'),
  ('Aluno', 'Perfil para usuários que são alunos.');

INSERT INTO usuario (usuario, email, senha_hash, id_detalhe_usuario, id_perfil) VALUES
  ('admin01', 'admin01@example.com', 'senha_hash_admin01', 1, 1),
  ('aluno01', 'aluno01@example.com', 'senha_hash_aluno01', 2, 2),
  ('aluno02', 'aluno02@example.com', 'senha_hash_aluno01', 3, 2),

INSERT INTO detalhe_usuario (id_usuario, confirmou_email, data_confirmou_email) VALUES
  (1, true, NOW() - INTERVAL '2 days'),
  (2, false, NULL),
  (3, true, NOW() - INTERVAL '5 days');
