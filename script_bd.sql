CREATE TABLE usuario(
 id_usuario SERIAL PRIMARY KEY,
 nome varchar(100) NOT.NULL,
 email varchar(100) NOT.NULL,
 senha_hash varchar(255) NOT.NULL,
 data_nascimento (date) NOT.NULL,
 tipo_perfil varchar(255)NOT.NULL,
 fcm_toke varchar(255),
 data_cadastro timestamp
 );


 SELECT * FROM usuario;


  INSERT INTO usuario (nome,email,cpf) VALUES ('murilo', 'murilo.nascimento.silva26@escola.pr.gov.br', '6766777667');

  CREATE TABLE pedido(
 id_usuario SERIAL PRIMARY KEY,
 fk_cliente int NOT.NULL,
 fk_endereco_entrega int NOT.NULL,
 id_cupom int,
 status_pedido status_pedido_enum varchar(255) NOT.NULL,
 valor_subtotal decimal(10,2) not null,
 valor_desconto decimal(10,2),
 valor_total decimal(10,2),
 data_pedido timestamp
 );


 SELECT * FROM pedido;


 INSERT INTO pedido (endereco,cliente) VALUES ('murilo', 'murilo.nascimento.silva26@escola.pr.gov.br');

 CREATE TABLE item_pedido(
  id_item_pedido SERIAL PRIMARY KEY,
  fk_pedido int not null,
  fk_suplemento int not null,
  quantidade int not null,
  preco_unitario decimal (10,2) not null
  );

  SELECT * FROM item_pedido;

  CREATE TABLE suplemento_favorito(
  id_favorito SERIAL PRIMARY KEY,
  fk_usuario int NOT.NULL,
  fk_suplemento int NOT.NULL,
  data_adicao timestamp
  );
  
  INSERT INTO suplemento_favoritos (id_usuario, id_suplemento, data_adicao)
  VALUES (1, 1, '2026-10-16 10:45:00');

  INSERT INTO suplemento_favoritos (id_usuario, id_suplemento, data_adicao)
  VALUES (1, 2, '2026-10-16 10:46:22');

  INSERT INTO suplemento_favoritos (id_usuario, id_suplemento, data_adicao)
  VALUES (1, 3, '2026-10-16 11:00:15');

  SELECT * FROM suplemento_favorito

 CREATE TABLE id_endereco(
  id_endereco SERIAL PRIMARY KEY,
   fk_usuario int not null,
  cep varchar (8) not null,
  logradouro varchar (150) not null,
  numero varchar (20),
  bairro varchar (100) not null,
  cidade varchar (100) not null,
  estado varchar(2) not null,
  eh_principal boolean
  );

    SELECT * FROM id_endereco;
    
  CREATE TABLE cupom_desconto(
    id_cupom SERIAL PRIMARY KEY,
    codigo_cupom varchar(30) not null,
    porcentual_desconto decimal(5,2),
    valor_desconto_fixo decimal(10,2),
    data_validade timestamp not null
  );
   INSERT INTO cupom_desconto (codigo_cupom, porcentual_desconto, valor_desconto_fixo, data_validade)
  VALUES ('BEMVINDO10', 10.00, NULL, '2027-12-31 23:59:59');

  INSERT INTO cupom_desconto (codigo_cupom, porcentual_desconto, valor_desconto_fixo, data_validade)
  VALUES ('FRETEGRATIS', NULL, 15.00, '2027-06-30 12:00:00');

  INSERT INTO cupom_desconto (codigo_cupom, porcentual_desconto, valor_desconto_fixo, data_validade)
  VALUES ('FITNESS20', 20.00, NULL, '2027-03-15 00:00:00');

  SELECT * FROM cupom_desconto;

CREATE TABLE diario_alimentar(
  id_registro SERIAL PRIMARY KEY,
  fk_usuario int not null,
  fk_alimento int not null,
  categoria_refeicao varchar(255) not null,
  quantidad_gramas decimal(8,2) not null,
  calorias_calculadas decimal(8,2) not null,
  data_registro date not null,
  data_sincronizacao timestamp
);
  INSERT INTO diario_alimentar (id_usuario, id_alimento, categoria_refeicao, quantidade_gramas, calorias_calculadas, data_registro, data_sincronizacao) 
  VALUES (1, 10, 'Café da Manhã', 150.00, 350.50, '2026-10-16', '2026-10-16 08:30:00'); 

  INSERT INTO diario_alimentar (id_usuario, id_alimento, categoria_refeicao, quantidad_gramas, calorias_calculadas, data_registro, data_sincronizacao) 
  VALUES (1, 11, 'Almoço', 350.00, 620.00, '2026-10-16', '2026-10-16 13:00:00'); 

  INSERT INTO diario_alimentar (id_usuario, id_alimento, categoria_refeicao, quantidad_gramas, calorias_calculadas, data_registro, data_sincronizacao)
  VALUES (1, 12, 'Lanche', 50.00, 120.00, '2026-10-15', NULL); 
 
 SELECT * FROM diario_alimentar;

CREATE TABLE suplemento(
  id_suplemento SERIAL PRIMARY KEY,
  nome varchar(150),
  descricao text,
  peso_kg varchar(30),
  preco_unitario decimal(10,2),
  quantidade_estoque int
  url_imagem varchar(255),
  ativo boolean
);
  INSERT INTO suplemento (nome, descricao, peso_kg, preco_unitario, quantidade_estoque, url_imagem, ativo) 
  VALUES ('Whey Protein', 'Suplemento proteico de alta absorção para ganho de massa muscular.', 0.9, 189, 50,);

  INSERT INTO suplemento (nome, descricao, peso_kg, preco_unitario, quantidade_estoque, url_imagem, ativo) 
  VALUES ('Creatina Monohidratada Pura', 'auxilia no aumento de força, potência e resistência física durante os treinos.', 0.300, 85, 120,);

  INSERT INTO suplemento (nome, descricao, peso_kg, preco_unitario, quantidade_estoque, url_imagem, ativo) 
  VALUES ('BCAA Cápsulas', 'Aminoácidos de cadeia ramificada que auxiliam na recuperação muscular pós-treino.', 0.150, 59, 0,);

  SELECT * FROM suplemento;
  
CREATE TABLE public.notificacao_push (
  id_notificacao int not null,
  fk_usuario int not null,
  titulo varchar(100) not null,
  mensagem text not null,
  tipo_notificacao varchar(100) not null,
  data_agendamento timestamp not null,
  enviada boolean null,
  data_envio timestamp null,
  constraint notificacao_push_pkey primary key (id_notificacao)
);
  INSERT INTO public.notificacao_push (id_notificacao, id_usuario, titulo, mensagem, tipo_notificacao, data_agendamento, enviada, data_envio) VALUES (
    1, 101, 'Desconto Imperdível!', 'Use o cupom APP20 e ganhe 20% de desconto na sua próxima compra.', 'promocional', '2026-10-23 09:00:00', true, '2026-10-23 09:01:15'
);
  INSERT INTO public.notificacao_push (
    id_notificacao, id_usuario, titulo, mensagem, tipo_notificacao, data_agendamento, enviada, data_envio
) VALUES (
    2, 102, 'Lembrete de Aula', 'Sua mentoria de SQL começa em 15 minutos. Não se atrase!', 'alerta', '2026-10-24 14:45:00', null, null
);
  INSERT INTO public.notificacao_push (
    id_notificacao, id_usuario, titulo, mensagem, tipo_notificacao, data_agendamento, enviada, data_envio
) VALUES (
    3, 103, 'Nova mensagem recebida', 'Você recebeu uma nova mensagem de João no seu chat.', 'atualizacao', '2026-10-23 10:30:00', true, '2026-10-23 10:30:05'
);
CREATE TABLE alimentos(
  id_alimentos SERIAL PRIMARY KEY,
  fk_nome varchar(120),
  fk_porcao_padrao_gramas decimal(8,2),
  fk_calorias_base decimal(8,2),
  fk_proteinas_g decimal (6,2)
);
