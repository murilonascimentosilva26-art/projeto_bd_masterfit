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


 INSERT INTO pedido (nome,email) VALUES ('murilo', 'murilo.nascimento.silva26@escola.pr.gov.br');

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
