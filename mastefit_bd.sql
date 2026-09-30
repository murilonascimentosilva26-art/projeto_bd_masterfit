CREATE TABLE usuario(
 id_usuario SERIAL PRIMARY KEY,
 nome varchar(255)not null,
 email varchar(255)not null,
 senha_hash varchar(255)not null,
 data_nascimento date not null,
 tipo_perfil varchar(255)not null,
 fcm_toke varchar(255),
 data_cadastro timestamp
 );


 SELECT * FROM usuario;


 INSERT INTO usuario (nome,email) VALUES ('murilo', 'murilo.nascimento.silva26@escola.pr.gov.br');


 CREATE TABLE pedido(
 id_usuario SERIAL PRIMARY KEY,
 id_cliente int not null,
 id_endereco_entrega int not null,
 id_cupom int,
 status_pedido status_pedido_enum varchar(255) not null,
 valor_subtotal decimal(10,2) not null,
 valor_desconto decimal(10,2),
 valor_total decimal(10,2),
 data_pedido timestamp
 );


 SELECT * FROM cliente;


CREATE TABLE item_pedido(
id_item_pedido SERIAL PRIMARY KEY,
id_pedido int not null,
id_suplemento int not null,
quantidade int not null,
preco_unitario decimal(10,2) not null 


);

SELECT * FROM item_pedido
