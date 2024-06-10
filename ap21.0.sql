CREATE SCHEMA GRUPO001;

use GRUPO001;

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

-- populando tabelas
-- cliente
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (1, 'Sidonia', 'Salvador', 'PA', 'F', 'C', '1998-03-25');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (2, 'Margarette', 'Sao Paulo', 'PB', 'F', 'D', '1975-12-10');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (3, 'Sheryl', 'Maceio', 'TO', 'F', 'C', '1956-09-30');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (4, 'Willdon', 'Campinas', 'RN', 'M', 'C', '1998-12-29');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (5, 'Lewie', 'Teresina', 'PR', 'M', 'V', '2003-10-15');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (6, 'Major', 'Goiania', 'BA', 'M', 'C', '1944-06-15');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (7, 'Merl', 'Belo Horizonte', 'AL', 'F', 'S', '2006-06-24');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (8, 'Olenka', 'Natal', 'RO', 'F', 'D', '1964-04-14');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (9, 'Roddie', 'Recife', 'MT', 'M', 'C', '1995-03-31');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (10, 'Orazio', 'Campinas', 'RJ', 'M', 'S', '1956-02-10');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (11, 'Ruperto', 'Sao Bernardo do Campo', 'AL', 'M', 'D', '1953-12-25');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (12, 'Perrine', 'Belo Horizonte', 'PB', 'F', 'D', '1954-12-05');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (13, 'Kiele', 'Rio de Janeiro', 'ES', 'F', 'D', '1978-11-27');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (14, 'Cary', 'Campinas', 'ES', 'F', 'D', '1950-11-20');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (15, 'Laughton', 'Teresina', 'BA', 'M', 'V', '1955-10-16');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (16, 'Merissa', 'Sao Paulo', 'AM', 'F', 'C', '1976-08-14');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (17, 'Sibelle', 'Recife', 'GO', 'F', 'C', '1996-07-12');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (18, 'Hattie', 'Osasco', 'ES', 'F', 'D', '1935-12-13');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (19, 'Roanna', 'Curitiba', 'RO', 'F', 'C', '1962-11-26');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (20, 'Brantley', 'Recife', 'PA', 'M', 'C', '1965-09-13');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (21, 'Nowell', 'Porto Alegre', 'PA', 'M', 'C', '1941-12-14');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (22, 'Pieter', 'Rio de Janeiro', 'PA', 'M', 'D', '1937-04-05');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (23, 'Ambrose', 'Campinas', 'PI', 'M', 'D', '1991-10-27');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (24, 'Nicolai', 'Fortaleza', 'RR', 'M', 'V', '1937-07-23');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (25, 'Rhodia', 'Fortaleza', 'AM', 'F', 'S', '1958-07-11');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (26, 'Melanie', 'Manaus', 'AP', 'F', 'S', '1949-06-13');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (27, 'Davis', 'Maceio', 'MG', 'M', 'C', '1999-01-24');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (28, 'Roanna', 'Manaus', 'AP', 'F', 'S', '1989-02-22');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (29, 'Bill', 'Rio de Janeiro', 'AL', 'M', 'S', '1980-05-12');
insert into cliente (coddcliente, nome, cidade, estado, genero, estadocivil, dt_nascimento) values (30, 'Tad', 'Manaus', 'CE', 'M', 'S', '1981-09-10');

-- compra
insert into compra (cod_compra, dt_data, hora) values (1, '2023-08-09', '11:25');
insert into compra (cod_compra, dt_data, hora) values (2, '2023-11-20', '2:47');
insert into compra (cod_compra, dt_data, hora) values (3, '2023-10-02', '11:36');
insert into compra (cod_compra, dt_data, hora) values (4, '2023-03-16', '1:06');
insert into compra (cod_compra, dt_data, hora) values (5, '2023-09-05', '7:37');
insert into compra (cod_compra, dt_data, hora) values (6, '2023-09-22', '12:21');
insert into compra (cod_compra, dt_data, hora) values (7, '2023-12-31', '11:23');
insert into compra (cod_compra, dt_data, hora) values (8, '2023-08-10', '23:00');
insert into compra (cod_compra, dt_data, hora) values (9, '2023-11-23', '10:07');
insert into compra (cod_compra, dt_data, hora) values (10, '2023-02-12', '0:41');
insert into compra (cod_compra, dt_data, hora) values (11, '2023-04-26', '6:21');
insert into compra (cod_compra, dt_data, hora) values (12, '2023-02-10', '9:34');
insert into compra (cod_compra, dt_data, hora) values (13, '2023-08-20', '12:19');
insert into compra (cod_compra, dt_data, hora) values (14, '2023-02-26', '5:54');
insert into compra (cod_compra, dt_data, hora) values (15, '2023-07-10', '12:32');
insert into compra (cod_compra, dt_data, hora) values (16, '2023-10-14', '10:55');
insert into compra (cod_compra, dt_data, hora) values (17, '2023-07-20', '7:31');
insert into compra (cod_compra, dt_data, hora) values (18, '2023-04-22', '7:44');
insert into compra (cod_compra, dt_data, hora) values (19, '2023-01-28', '22:29');
insert into compra (cod_compra, dt_data, hora) values (20, '2023-02-23', '8:18');
insert into compra (cod_compra, dt_data, hora) values (21, '2023-02-02', '10:39');
insert into compra (cod_compra, dt_data, hora) values (22, '2023-08-19', '3:31');
insert into compra (cod_compra, dt_data, hora) values (23, '2023-02-21', '1:17');
insert into compra (cod_compra, dt_data, hora) values (24, '2023-07-11', '3:13');
insert into compra (cod_compra, dt_data, hora) values (25, '2023-07-04', '6:06');
insert into compra (cod_compra, dt_data, hora) values (26, '2023-08-24', '16:43');
insert into compra (cod_compra, dt_data, hora) values (27, '2023-03-11', '3:52');
insert into compra (cod_compra, dt_data, hora) values (28, '2023-06-09', '6:10');
insert into compra (cod_compra, dt_data, hora) values (29, '2023-12-23', '8:31');
insert into compra (cod_compra, dt_data, hora) values (30, '2023-09-22', '18:55');
select * from compra;
desc compra;
-- possui
insert into possui (valor_desconto, qtd) values (3, 969);
insert into possui (valor_desconto, qtd) values (4, 820);
insert into possui (valor_desconto, qtd) values (3, 661);
insert into possui (valor_desconto, qtd) values (3, 166);
insert into possui (valor_desconto, qtd) values (1, 614);
insert into possui (valor_desconto, qtd) values (2, 315);
insert into possui (valor_desconto, qtd) values (5, 318);
insert into possui (valor_desconto, qtd) values (4, 187);
insert into possui (valor_desconto, qtd) values (3, 176);
insert into possui (valor_desconto, qtd) values (1, 981);
insert into possui (valor_desconto, qtd) values (5, 892);
insert into possui (valor_desconto, qtd) values (1, 30);
insert into possui (valor_desconto, qtd) values (3, 684);
insert into possui (valor_desconto, qtd) values (4, 691);
insert into possui (valor_desconto, qtd) values (4, 923);
insert into possui (valor_desconto, qtd) values (2, 483);
insert into possui (valor_desconto, qtd) values (4, 262);
insert into possui (valor_desconto, qtd) values (4, 236);
insert into possui (valor_desconto, qtd) values (1, 525);
insert into possui (valor_desconto, qtd) values (3, 964);
insert into possui (valor_desconto, qtd) values (5, 538);
insert into possui (valor_desconto, qtd) values (1, 166);
insert into possui (valor_desconto, qtd) values (5, 4);
insert into possui (valor_desconto, qtd) values (3, 592);
insert into possui (valor_desconto, qtd) values (1, 98);
insert into possui (valor_desconto, qtd) values (5, 116);
insert into possui (valor_desconto, qtd) values (1, 754);
insert into possui (valor_desconto, qtd) values (2, 356);
insert into possui (valor_desconto, qtd) values (1, 154);
insert into possui (valor_desconto, qtd) values (2, 942);

select * from possui;
select * from cliente;
select * from compra;
