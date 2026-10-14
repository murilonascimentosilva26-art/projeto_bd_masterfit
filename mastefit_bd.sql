CREATE TABLE usuario(
 id_usuario SERIAL PRIMARY KEY,
 nome varchar(100)not.null,
 email varchar(100)not.null,
 senha_hash varchar(255)not.null,
 data_nascimento (date)not.null,
 tipo_perfil varchar(255)not.null,
 fcm_toke varchar(255),
 data_cadastro timestamp
 );


 SELECT * FROM usuario;


  INSERT INTO usuario (nome,email,cpf) VALUES ('murilo', 'murilo.nascimento.silva26@escola.pr.gov.br', '6766777667');

  CREATE TABLE pedido(
 id_usuario SERIAL PRIMARY KEY,
 id_clientre int not null,
 id_endereco_entrega int not null,
 id_cupom int,
 status_pedido status_pedido_enum varchar(255) not null,
 valor_subtotal decimal(10,2) not null,
 valor_desconto decimal(10,2),
 valor_total decimal(10,2),
 data_pedido timestamp
 );


 SELECT * FROM pedido;


 INSERT INTO pedido (endereco,cliente) VALUES ('murilo', 'murilo.nascimento.silva26@escola.pr.gov.br');

 CREATE TABLE item_pedido(
  id_item_pedido SERIAL PRIMARY KEY,
  id_pedido int not null,
  id_suplemento int not null,
  quantidade int not null,
  preco_unitario decimal (10,2) not null
  );

  SELECT * FROM item_pedido;

  CREATE TABLE suplemento_favorito(

  id_favorito SERIL PRIMARY KEY,
  id_usuario int not null,
  id_suplemento int not null,
  data_adicao timestamp
  );
 CREATE TABLE id_endereco(
    
  id_endereco SERIAL PRIMARY KEY,
   id_usuario int not null,
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

CREATE TABLE diario_alimentar(
  id_registro SERIAL PRIMARY KEY,
  id_usuario int not null,
  id_alimento int not null,
  categoria_refeicao varchar(255) not null,
  quantidad_gramas decimal(8,2) not null,
  calorias_calculadas decimal(8,2) not null,
  data_registro date not null,
  data_sincronizacao timestamp
);

CREATE TABLE suplemento(
  id_suplemento SERIAL PRIMARY KEY,
  nome varchar(150),
  descricao text,
  peso_kg varchar(30),
  preco_unitario decimal(10,2),
  quantidade_estoque int,
  url_imagem varchar(255),
  ativo boolean
);


  create table public.notificacao_push (
  id_notificacao int not null,
  id_usuario int not null,
  titulo varchar(100) not null,
  mensagem text not null,
  tipo_notificacao varchar(100) not null,
  data_agendamento timestamp not null,
  enviada boolean null,
  data_envio timestamp null,
  constraint notificacao_push_pkey primary key (id_notificacao)
);

