CREATE SCHEMA GRUPO01;

use GRUPO01;

-- Criando tabelas

CREATE TABLE cliente(
coddcliente int primary key,
nome varchar(30),
cidade varchar(30),
estado char(2),
genero char(1),
dt_nascimento date,
estadocivil char(1),
cod_compra integer
);
CREATE TABLE compra(
cod_compra int primary key,
dt_data date,
hora time
);

ALTER TABLE cliente ADD foreign key(cod_compra) references compra(cod_compra);

CREATE TABLE funcionario(
cod_funcionario int primary key,
nome varchar(30),
genero char(1),
dt_nascimento date,
estadocivil char(1),
cidade varchar(20),
estado char(2),
cargo varchar(30),
cod_compra int
);

ALTER TABLE funcionario ADD foreign key(cod_compra) references compra(cod_compra);

CREATE TABLE produto(
cod_produto int primary key,
nome  varchar(30),
preco real,
descricao varchar(30)
);

CREATE TABLE fabricante(
cod_fabricante int primary key,
nome varchar(30),
site varchar(20),
email varchar(30),
cod_produto int
);
ALTER TABLE fabricante ADD foreign key(cod_produto) references produto(cod_produto);

create table possui (
cod_compra int,
cod_produto int,
valor_desconto real,
qtd int
);

ALTER TABLE possui ADD foreign key(cod_produto) references produto(cod_produto);
ALTER TABLE possui ADD foreign key(cod_compra) references compra(cod_compra);