/* GRUPO 1
202307300349 / Kaio Soares Alves
202302532888 / Arthur Camaz Pinto
202402851756 / Arthur Peixoto Schiller
202307539783/ Maria Claudia Freitas
*/

drop schema grupo01;

CREATE SCHEMA grupo01;

USE grupo01;

-- Criando tabelas e adicionando os elementos abaixo: 
SELECT * FROM cliente;
SELECT * FROM fabricante;
SELECT * FROM funcionario;
SELECT * FROM produto;
SELECT * FROM compra;
SELECT * FROM possui;

CREATE TABLE cliente (
	coddcliente int primary key,
	nome varchar(30),
	cidade varchar(30),
	estado char(2),
	genero char(1),
	dt_nascimento date,
	estadocivil char(1),
    CONSTRAINT chk_genero_cl CHECK (genero IN ('M', 'F'))
);

INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES (1,'João Silva', 'São Paulo', 'SP', 'M', '1990-01-01', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(2,'Maria Souza', 'Rio de Janeiro', 'RJ', 'F', '1985-05-12', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(3,'Pedro Santos', 'Belo Horizonte', 'MG', 'M', '1978-08-30', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(4,'Ana Pereira', 'Curitiba', 'PR', 'F', '1992-03-22', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(5,'Carlos Oliveira', 'Porto Alegre', 'RS', 'M', '1989-12-10', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(6, 'Beatriz Gomes', 'Salvador', 'BA', 'F', '1995-07-07', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(7, 'Renato Almeida', 'Fortaleza', 'CE', 'M', '1982-11-25', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(8, 'Clara Lima', 'Manaus', 'AM', 'F', '1993-02-14', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(9, 'Felipe Araújo', 'Brasília', 'DF', 'M', '1987-06-18', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(10, 'Juliana Ferreira', 'Recife', 'PE', 'F', '1980-10-05', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(11, 'Marcos Rocha', 'Florianópolis', 'SC', 'M', '1991-04-15', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(12, 'Luciana Martins', 'Belém', 'PA', 'F', '1983-09-09', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(13, 'Gabriel Costa', 'São Luís', 'MA', 'M', '1994-01-27', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(14, 'Paula Carvalho', 'Natal', 'RN', 'F', '1990-03-03', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(15, 'Rafael Ribeiro', 'Teresina', 'PI', 'M', '1986-05-20', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(16, 'Fernanda Batista', 'João Pessoa', 'PB', 'F', '1988-07-30', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(17, 'Gustavo Mendes', 'Maceió', 'AL', 'M', '1979-11-17', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(18, 'Tatiana Barbosa', 'Aracaju', 'SE', 'F', '1992-04-25', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(19, 'André Castro', 'Campo Grande', 'MS', 'M', '1984-06-29', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(20, 'Camila Costa', 'Cuiabá', 'MT', 'F', '1995-08-23', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(21, 'Thiago Teixeira', 'Goiânia', 'GO', 'M', '1989-10-13', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(22, 'Rosa Almeida', 'Palmas', 'TO', 'F', '1985-12-22', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(23, 'Rodrigo Souza', 'Boa Vista', 'RR', 'M', '1990-04-04', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(24, 'Larissa Santos', 'Macapá', 'AP', 'F', '1983-07-12', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(25, 'Lucas Nascimento', 'Porto Velho', 'RO', 'M', '1978-09-15', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(26, 'Débora Oliveira', 'Rio Branco', 'AC', 'F', '1993-05-06', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(27, 'Vitor Barros', 'Vitória', 'ES', 'M', '1987-11-21', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(28, 'Simone Ferreira', 'São José', 'SC', 'F', '1982-02-02', 'C');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(29, 'Daniel Moreira', 'Santos', 'SP', 'M', '1991-09-11', 'S');
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES(30, 'Adriana Cardoso', 'Ribeirão Preto', 'SP', 'F', '1994-06-07', 'S');

CREATE TABLE fabricante(
	cod_fabricante int primary key,
	nome varchar(30),
	site varchar(20),
	email varchar(30) UNIQUE
);

insert into fabricante (cod_fabricante, nome, site, email) values (1, 'Joaquin', 'cbc.ca', 'jmalser0@istockphoto.com');
insert into fabricante (cod_fabricante, nome, site, email) values (2, 'Kizzee', 'ucsd.edu', 'kchaimson1@pagesperso.fr');
insert into fabricante (cod_fabricante, nome, site, email) values (3, 'Melony', 'archive.org', 'mpettet2@nbcnews.com');
insert into fabricante (cod_fabricante, nome, site, email) values (4, 'Buffy', 'cargocollective.com', 'bmille3@dell.com');
insert into fabricante (cod_fabricante, nome, site, email) values (5, 'Kelsi', 'ftc.gov', 'kterrett4@about.me');
insert into fabricante (cod_fabricante, nome, site, email) values (6, 'Jarrett', 'bravesites.com', 'jbescoby5@oaic.gov.au');
insert into fabricante (cod_fabricante, nome, site, email) values (7, 'Dalli', '360.cn', 'dwinters6@seesaa.net');
insert into fabricante (cod_fabricante, nome, site, email) values (8, 'Rosette', 'pinterest.com', 'rcowans7@meetup.com');
insert into fabricante (cod_fabricante, nome, site, email) values (9, 'Niccolo', 'berkeley.edu', 'npammenter8@fotki.com');
insert into fabricante (cod_fabricante, nome, site, email) values (10, 'Abeu', 'whitehouse.gov', 'avannah9@i2i.jp');
insert into fabricante (cod_fabricante, nome, site, email) values (11, 'Delilah', 'oakley.com', 'dblewa@apache.org');
insert into fabricante (cod_fabricante, nome, site, email) values (12, 'Joya', 'canalblog.com', 'jespinasb@cafepress.com ');
insert into fabricante (cod_fabricante, nome, site, email) values (13, 'Berget', 'pinterest.com', 'btommeoc@quantcast.com');
insert into fabricante (cod_fabricante, nome, site, email) values (14, 'Zorine', 'ox.ac.uk', 'zroadnightd@amazon.de');
insert into fabricante (cod_fabricante, nome, site, email) values (15, 'Cherri', 'google.de', 'cronaldsone@tinypic.com');
insert into fabricante (cod_fabricante, nome, site, email) values (16, 'Wynn', 'ted.com', 'wcastelotf@xinhuanet.com');
insert into fabricante (cod_fabricante, nome, site, email) values (17, 'Etheline', 'bing.com', 'ecobbyg@opera.com');
insert into fabricante (cod_fabricante, nome, site, email) values (18, 'Nell', 'infoseek.co.jp', 'nbetserh@nsw.gov.au');
insert into fabricante (cod_fabricante, nome, site, email) values (19, 'Min', 'free.fr', 'mindgei@friendfeed.com');
insert into fabricante (cod_fabricante, nome, site, email) values (20, 'Danya', 'umich.edu', 'dantragj@slate.com');
insert into fabricante (cod_fabricante, nome, site, email) values (21, 'Belita', 'seesaa.net', 'bcrucettik@example.com');
insert into fabricante (cod_fabricante, nome, site, email) values (22, 'Elfrieda', 'bluehost.com', 'eerrichil@house.gov');
insert into fabricante (cod_fabricante, nome, site, email) values (23, 'Adeline', 'a8.net', 'aparkynsm@gmpg.org');
insert into fabricante (cod_fabricante, nome, site, email) values (24, 'Lulu', 'imgur.com', 'lcavenn@wikispaces.com');
insert into fabricante (cod_fabricante, nome, site, email) values (25, 'Floyd', 'google.com.au', 'fcrossono@dropbox.com');
insert into fabricante (cod_fabricante, nome, site, email) values (26, 'Shell', 'dell.com', 'sseagravep@who.int');
insert into fabricante (cod_fabricante, nome, site, email) values (27, 'Ade', 'netlog.com', 'ajackmanq@weibo.com');
insert into fabricante (cod_fabricante, nome, site, email) values (28, 'Norrie', 'scientific.com', 'ncamockr@engadget.com');
insert into fabricante (cod_fabricante, nome, site, email) values (29, 'Risa', 'ebay.uk', 'rpakenhams@ehow.com');
insert into fabricante (cod_fabricante, nome, site, email) values (30, 'Carr', 'newyorker.com', 'ccrossert@toplist.cz');




CREATE TABLE funcionario(
	cod_funcionario int primary key,
	nome varchar(30),
	genero char(1),
	dt_nascimento date,
	estadocivil char(1),
	cidade varchar(20),
	estado char(2),
	cargo varchar(30),
    CONSTRAINT chk_genero_func CHECK (genero IN ('M', 'F')),  -- Apenas 'M' ou 'F' são permitidos
	CONSTRAINT chk_estado_func CHECK (estado IN ('AC', 'AL', 'AP', 'AM', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 
													'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 'PE', 'PI', 'RJ', 'RN',
                                                    'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'))
);

insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (1, 'Odelle', 'F', '2023-12-09', 'D', 'Pirava', 'MG', 'Automation Specialist II');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (2, 'Annaliese', 'F', '2023-08-31', 'C', 'Cikuning', 'CE', 'Social Worker');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (3, 'Tana', 'F', '2023-02-28', 'V', 'Venilale', 'RJ', 'Occupational Therapist');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (4, 'Bron', 'M', '2023-08-24', 'V', 'Koźmin Wielkopolski', 'RO', 'Account Coordinator');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (5, 'Jenine', 'F', '2023-07-30', 'D', 'Skorogoszcz', 'ES', 'Occupational Therapist');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (6, 'Elisa', 'F', '2023-09-14', 'D', 'Campos', 'RR', 'Recruiting Manager');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (7, 'Issie', 'F', '2023-01-18', 'V', 'Đắk Mâm', 'AP', 'Assistant Manager');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (8, 'Davidson', 'M', '2023-05-29', 'V', 'Ganjiang', 'MG', 'Human Resources Assistant I');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (9, 'Della', 'F', '2023-01-05', 'D', 'Capim Grosso', 'ES', 'Senior Cost Accountant');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (10, 'Gilbertine', 'F', '2023-04-15', 'D', 'Kamirenjaku', 'RO', 'Developer I');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (11, 'Deirdre', 'F', '2023-06-10', 'V', 'Bakar', 'AM', 'Physical Therapy Assistant');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (12, 'Harvey', 'M', '2023-01-12', 'D', 'Jiangbei', 'SP', 'Staff Scientist');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (13, 'Haley', 'M', '2023-02-04', 'C', 'Tianxing', 'PE', 'Editor');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (14, 'Carmine', 'M', '2023-08-13', 'S', 'Alençon', 'PI', 'Marketing Manager');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (15, 'Bevvy', 'F', '2023-11-13', 'C', 'Heemskerk', 'TO', 'Recruiter');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (16, 'Ricki', 'F', '2023-03-21', 'C', 'Połajewo', 'PA', 'Help Desk Technician');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (17, 'Michell', 'F', '2023-04-04', 'C', 'Quezon', 'MA', 'Senior Editor');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (18, 'Justino', 'M', '2023-11-23', 'V', 'Al Mughayyir', 'MG', 'Environmental Specialist');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (19, 'Clerc', 'M', '2023-09-18', 'S', 'Dulovo', '', 'Cost Accountant');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (20, 'Ruprecht', 'M', '2023-06-21', 'S', 'Itami', 'BA', 'Senior Financial Analyst');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (21, 'Tammy', 'M', '2023-11-26', 'D', 'Chruszczobród', 'PA', 'Associate Professor');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (22, 'Reese', 'M', '2023-08-06', 'S', 'Xinyi', 'AL', 'Structural Engineer');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (23, 'Farrel', 'M', '2023-06-06', 'C', 'Phnom Penh', 'RS', 'Desktop Support Technician');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (24, 'Terry', 'F', '2023-03-01', 'V', 'Svetlyy', 'PA', 'Analyst Programmer');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (25, 'Tally', 'F', '2023-12-29', 'V', 'Ntonggu', 'RO', 'Administrative Officer');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (26, 'Justis', 'M', '2023-01-14', 'C', 'Danané', 'RO', 'Web Developer IV');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (27, 'Darcie', 'F', '2023-07-13', 'S', 'Evansville', 'MA', 'Librarian');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (28, 'Killie', 'M', '2023-03-12', 'D', 'Sines', 'MS', 'Senior Cost Accountant');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (29, 'Hugo', 'M', '2023-03-01', 'V', 'Kawage', 'AM', 'Data Coordinator');
insert into funcionario (cod_funcionario, nome, genero, dt_nascimento , estadocivil, cidade, estado, cargo) values (30, 'Debora', 'F', '2023-02-28', 'D', 'Amurzet', '', 'GIS Technical Architect');

CREATE TABLE produto (
	cod_produto int primary key,
	nome  varchar(30)  NOT NULL,
	preco real  NOT NULL,
	descricao varchar(30),
    cod_fabricante int,
	FOREIGN KEY (cod_fabricante) REFERENCES fabricante(cod_fabricante),
    CHECK (preco > 0)
);

insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (1, 'requeijão', 'M', '11.06',4);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (2, 'macarrão', 'M', '14.59',5);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (3, 'chuchu', 'P', '3.02',6);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (4, 'abobrinha', 'P', '4.18',7);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (5, 'leite', 'P', '4.08',8);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (6, 'vassoura', 'P', '6.32',9);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (7, 'pasta de dente', 'P', '1.52',1);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (8, 'macarrão', 'P', '6.34',3);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (9, 'leite', 'P', '4.08',2);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (10, 'vassoura', 'P', '6.32',20);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (11, 'vassoura', 'M', '11.95',18);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (12, 'manteiga', 'G', '14.59',19);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (13, 'arroz', 'G', '19.36',17);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (14, 'manteiga', 'M', '9.98',15);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (15, 'feijão', 'G', '13.87',16);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (16, 'queijo', 'G', '17.87',14);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (17, 'pasta de dente', 'M', '7.22',13);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (18, 'pasta de dente', 'P', '1.52',11);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (19, 'manteiga', 'M', '9.98',12);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (20, 'abobrinha', 'G', '13.86',10);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (21, 'leite', 'P', '3.76',30);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (22, 'abobrinha', 'P', '4.18',28);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (23, 'beterraba', 'P', '2.87',29);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (24, 'contra filé', 'M', '33.50',26);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (25, 'abóbora', 'P', '1.38',27);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (26, 'feijão', 'P', '7.28',24);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (27, 'abóbora', 'P', '1.38',23);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (28, 'queijo', 'G', '17.87',25);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (29, 'chuchu', 'G', '9.45',22);
insert into produto (cod_produto, nome, descricao, preco,cod_fabricante) values (30, 'presunto', 'M', '15.37',21);

CREATE TABLE compra (
	cod_compra int primary key,
	dt_data date,
	hora time,
    coddcliente int,
    cod_funcionario int,
    FOREIGN KEY (coddcliente) REFERENCES cliente(coddcliente),
    FOREIGN KEY (cod_funcionario) REFERENCES funcionario(cod_funcionario)
);

insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (1, '2023-06-30', '9:43', 1, 1);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (13, '2023-06-05', '4:55', 2, 2);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (10, '2023-04-17', '3:56', 3, 3);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (23, '2023-11-02', '8:08', 4, 4);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (30, '2023-06-28', '11:42', 5, 5);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (8, '2023-12-24', '2:21', 6, 6);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (7, '2023-08-20', '2:25', 7, 7);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (4, '2023-01-17', '3:42', 8, 8);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (12, '2023-08-04', '7:14', 9, 9);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (25, '2023-10-12', '8:59', 10, 10);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (9, '2024-04-04', '11:30', 11, 11);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (15, '2024-01-21', '1:51', 12, 12);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (24, '2023-09-06', '9:42', 13, 13);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (18, '2023-06-19', '11:25', 14, 14);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (22, '2023-03-08', '4:01', 15, 15);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (27, '2023-05-19', '4:58', 16, 16);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (11, '2024-02-06', '1:27', 17, 17);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (19, '2023-05-06', '2:36', 18, 18);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (16, '2023-01-15', '1:00', 19, 19);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (6, '2023-07-23', '3:01', 20, 20);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (21, '2023-07-20', '5:11', 21, 21);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (20, '2024-01-18', '5:03', 22, 22);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (17, '2023-06-22', '2:16', 23, 23);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (31, '2023-11-26', '10:38', 24, 24);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (26, '2023-01-25', '12:07', 25, 25);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (14, '2023-06-07', '5:11', 26, 26);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (28, '2024-04-11', '7:47', 27, 27);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (29, '2023-11-08', '4:29', 28, 28);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (2, '2023-01-24', '11:48', 29, 29);
insert into compra (cod_compra, dt_data, hora,coddcliente,cod_funcionario) values (3, '2023-12-10', '4:07', 30, 30);

CREATE TABLE possui (
	cod_compra int,
	cod_produto int,
	valor_desconto real,
	qtd int,
	FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto),
	FOREIGN KEY (cod_compra) REFERENCES compra(cod_compra)
);
​
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(1, 1, 4.00, 820);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(10, 2, 3.00, 969);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(13, 3, 3.00, 661);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(23, 4, 3.00, 166);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(30, 5, 1.00, 614);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(8, 6, 2.00, 315);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(7, 7, 5.00, 318);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(4, 8, 4.00, 187);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(12, 9, 3.00, 176);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(25, 10, 1.00, 981);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(9, 11, 5.00, 892);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(15, 12, 1.00, 30);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(24, 13, 3.00, 684);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(18, 14, 4.00, 691);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(22, 15, 4.00, 923);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(27, 16, 2.00, 483);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(11, 17, 4.00, 262);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(19, 18, 4.00, 236);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(16, 19, 1.00, 525);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(6, 20, 3.00, 964);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(21, 21, 5.00, 538);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(20, 22, 1.00, 166);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(17, 23, 5.00, 4);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(31, 24, 3.00, 592);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(26, 25, 1.00, 98);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(14, 26, 5.00, 116);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(28, 27, 1.00, 754);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(29, 28, 2.00, 356);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(2, 29, 1.00, 154);
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES(3, 30, 2.00, 942);