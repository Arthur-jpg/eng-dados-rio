/* GRUPO 1
202307300349 / Kaio Soares Alves
202302532888 / Arthur Camaz Pinto
202402851756 / Arthur Peixoto Schiller
202307539783/ Maria Claudia Freitas
*/

CREATE SCHEMA grupo001;

USE grupo001;

-- Criando tabelas

-- Criação de tabela cliente
CREATE TABLE cliente (
	coddcliente int primary key,
	nome varchar(30),
	cidade varchar(30),
	estado varchar(30),
	genero char(1),
	dt_nascimento date,
	estadocivil varchar(15),
    CONSTRAINT chk_genero_cl CHECK (genero IN ('M', 'F')),
    CONSTRAINT chk_estado_cl CHECK (estado IN (
        'Acre', 'Alagoas', 'Amapá', 'Amazonas', 'Bahia', 'Ceará', 'Distrito Federal', 'Espírito Santo', 
        'Goiás', 'Maranhão', 'Mato Grosso', 'Mato Grosso do Sul', 'Minas Gerais', 'Pará', 'Paraíba', 
        'Paraná', 'Pernambuco', 'Piauí', 'Rio de Janeiro', 'Rio Grande do Norte', 'Rio Grande do Sul', 
        'Rondônia', 'Roraima', 'Santa Catarina', 'São Paulo', 'Sergipe', 'Tocantins')
    )
);

-- Populando a tabela de cliente
INSERT INTO cliente (coddcliente, nome, cidade, estado, genero, dt_nascimento, estadocivil) VALUES 
(1, 'João Silva', 'São Paulo', 'São Paulo', 'M', '1990-01-01', 'Solteiro'),
(2, 'Maria Souza', 'Rio de Janeiro', 'Rio de Janeiro', 'F', '1985-05-12', 'Casado'),
(3, 'Pedro Santos', 'Belo Horizonte', 'Minas Gerais', 'M', '1978-08-30', 'Solteiro'),
(4, 'Ana Pereira', 'Curitiba', 'Paraná', 'F', '1992-03-22', 'Casado'),
(5, 'Carlos Oliveira', 'Porto Alegre', 'Rio Grande do Sul', 'M', '1989-12-10', 'Viuvo'),
(6, 'Beatriz Gomes', 'Salvador', 'Bahia', 'F', '1995-07-07', 'Solteiro'),
(7, 'Renato Almeida', 'Fortaleza', 'Ceará', 'M', '1982-11-25', 'Casado'),
(8, 'Clara Lima', 'Manaus', 'Amazonas', 'F', '1993-02-14', 'Solteiro'),
(9, 'Felipe Araújo', 'Brasília', 'Distrito Federal', 'M', '1987-06-18', 'Casado'),
(10, 'Juliana Ferreira', 'Recife', 'Pernambuco', 'F', '1980-10-05', 'Solteiro'),
(11, 'Marcos Rocha', 'Florianópolis', 'Santa Catarina', 'M', '1991-04-15', 'Solteiro'),
(12, 'Luciana Martins', 'Belém', 'Pará', 'F', '1983-09-09', 'Casado'),
(13, 'Gabriel Costa', 'São Luís', 'Maranhão', 'M', '1994-01-27', 'Solteiro'),
(14, 'Paula Carvalho', 'Natal', 'Rio Grande do Norte', 'F', '1990-03-03', 'Casado'),
(15, 'Rafael Ribeiro', 'Teresina', 'Piauí', 'M', '1986-05-20', 'Solteiro'),
(16, 'Fernanda Batista', 'João Pessoa', 'Paraíba', 'F', '1988-07-30', 'Casado'),
(17, 'Gustavo Mendes', 'Maceió', 'Alagoas', 'M', '1979-11-17', 'Solteiro'),
(18, 'Tatiana Barbosa', 'Aracaju', 'Sergipe', 'F', '1992-04-25', 'Solteiro'),
(19, 'André Castro', 'Campo Grande', 'Mato Grosso do Sul', 'M', '1984-06-29', 'Casado'),
(20, 'Camila Costa', 'Cuiabá', 'Mato Grosso', 'F', '1995-08-23', 'Solteiro'),
(21, 'Thiago Teixeira', 'Goiânia', 'Goiás', 'M', '1989-10-13', 'Solteiro'),
(22, 'Rosa Almeida', 'Palmas', 'Tocantins', 'F', '1985-12-22', 'Casado'),
(23, 'Rodrigo Souza', 'Boa Vista', 'Roraima', 'M', '1990-04-04', 'Solteiro'),
(24, 'Larissa Santos', 'Macapá', 'Amapá', 'F', '1983-07-12', 'Solteiro'),
(25, 'Lucas Nascimento', 'Porto Velho', 'Rondônia', 'M', '1978-09-15', 'Casado'),
(26, 'Débora Oliveira', 'Rio Branco', 'Acre', 'F', '1993-05-06', 'Solteiro'),
(27, 'Vitor Barros', 'Vitória', 'Espírito Santo', 'M', '1987-11-21', 'Solteiro'),
(28, 'Simone Ferreira', 'São José', 'Santa Catarina', 'F', '1982-02-02', 'Casado'),
(29, 'Daniel Moreira', 'Santos', 'São Paulo', 'M', '1991-09-11', 'Solteiro'),
(30, 'Adriana Cardoso', 'Ribeirão Preto', 'São Paulo', 'F', '1994-06-07', 'Solteiro');




-- Criação de tabela funcionario
CREATE TABLE funcionario(
	cod_funcionario int primary key,
	nome varchar(30),
	genero char(1),
	dt_nascimento date,
	estadocivil char(15),
	cidade varchar(30),
	estado varchar(30),
	cargo varchar(30),
    CONSTRAINT chk_estadocivil_func CHECK (estadocivil IN ('Solteiro', 'Casado', 'Divorciado', 'Viuvo')),
    CONSTRAINT chk_genero_func CHECK (genero IN ('M', 'F')),  -- Apenas 'M' ou 'F' são permitidos
	CONSTRAINT chk_estado_func CHECK (estado IN (
        'Acre', 'Alagoas', 'Amapá', 'Amazonas', 'Bahia', 'Ceará', 'Distrito Federal', 'Espírito Santo', 
        'Goiás', 'Maranhão', 'Mato Grosso', 'Mato Grosso do Sul', 'Minas Gerais', 'Pará', 'Paraíba', 
        'Paraná', 'Pernambuco', 'Piauí', 'Rio de Janeiro', 'Rio Grande do Norte', 'Rio Grande do Sul', 
        'Rondônia', 'Roraima', 'Santa Catarina', 'São Paulo', 'Sergipe', 'Tocantins')
    )
);

-- Populando a tabela de funcionario
INSERT INTO funcionario (cod_funcionario, nome, genero, dt_nascimento, estadocivil, cidade, estado, cargo) VALUES 
(1, 'Odelle', 'F', '1980-12-09', 'Divorciado', 'Belo Horizonte', 'Minas Gerais', 'Automation Specialist II'),
(2, 'Annaliese', 'F', '1985-08-31', 'Casado', 'Fortaleza', 'Ceará', 'Social Worker'),
(3, 'Tana', 'F', '1978-02-28', 'Viuvo', 'Rio de Janeiro', 'Rio de Janeiro', 'Occupational Therapist'),
(4, 'Bron', 'M', '1975-08-24', 'Viuvo', 'Porto Velho', 'Rondônia', 'Account Coordinator'),
(5, 'Jenine', 'F', '1983-07-30', 'Divorciado', 'Vitória', 'Espírito Santo', 'Occupational Therapist'),
(6, 'Elisa', 'F', '1974-09-14', 'Divorciado', 'Boa Vista', 'Roraima', 'Recruiting Manager'),
(7, 'Issie', 'F', '1987-01-18', 'Viuvo', 'Macapá', 'Amapá', 'Assistant Manager'),
(8, 'Davidson', 'M', '1976-05-29', 'Viuvo', 'Uberlândia', 'Minas Gerais', 'Human Resources Assistant I'),
(9, 'Della', 'F', '1982-01-05', 'Divorciado', 'Vila Velha', 'Espírito Santo', 'Senior Cost Accountant'),
(10, 'Gilbertine', 'F', '1981-04-15', 'Divorciado', 'Ji-Paraná', 'Rondônia', 'Developer I'),
(11, 'Deirdre', 'F', '1985-06-10', 'Viuvo', 'Macapá', 'Amapá', 'Physical Therapy Assistant'),
(12, 'Harvey', 'M', '1980-01-12', 'Divorciado', 'São Paulo', 'São Paulo', 'Staff Scientist'),
(13, 'Haley', 'M', '1987-02-04', 'Casado', 'Recife', 'Pernambuco', 'Editor'),
(14, 'Carmine', 'M', '1979-08-13', 'Solteiro', 'Teresina', 'Piauí', 'Marketing Manager'),
(15, 'Bevvy', 'F', '1984-11-13', 'Casado', 'Palmas', 'Tocantins', 'Recruiter'),
(16, 'Ricki', 'F', '1986-03-21', 'Casado', 'Belém', 'Pará', 'Help Desk Technician'),
(17, 'Michell', 'F', '1978-04-04', 'Casado', 'São Luís', 'Maranhão', 'Senior Editor'),
(18, 'Justino', 'M', '1981-11-23', 'Viuvo', 'Montes Claros', 'Minas Gerais', 'Environmental Specialist'),
(19, 'Clerc', 'M', '1983-09-18', 'Solteiro', 'Porto Alegre', 'Rio Grande do Sul', 'Cost Accountant'),
(20, 'Ruprecht', 'M', '1985-06-21', 'Solteiro', 'Salvador', 'Bahia', 'Senior Financial Analyst'),
(21, 'Tammy', 'M', '1982-11-26', 'Divorciado', 'Belém', 'Pará', 'Associate Professor'),
(22, 'Reese', 'M', '1988-08-06', 'Solteiro', 'Maceió', 'Alagoas', 'Structural Engineer'),
(23, 'Farrel', 'M', '1974-06-06', 'Casado', 'Porto Alegre', 'Rio Grande do Sul', 'Desktop Support Technician'),
(24, 'Terry', 'F', '1978-03-01', 'Viuvo', 'Belém', 'Pará', 'Analyst Programmer'),
(25, 'Tally', 'F', '1980-12-29', 'Viuvo', 'Porto Velho', 'Rondônia', 'Administrative Officer'),
(26, 'Justis', 'M', '1985-01-14', 'Casado', 'Porto Velho', 'Rondônia', 'Web Developer IV'),
(27, 'Darcie', 'F', '1986-07-13', 'Solteiro', 'São Luís', 'Maranhão', 'Librarian'),
(28, 'Killie', 'M', '1983-03-12', 'Divorciado', 'Campo Grande', 'Mato Grosso do Sul', 'Senior Cost Accountant'),
(29, 'Hugo', 'M', '1977-03-01', 'Viuvo', 'Manaus', 'Amazonas', 'Data Coordinator'),
(30, 'Debora', 'F', '1982-02-28', 'Divorciado', 'Brasília', 'Distrito Federal', 'GIS Technical Architect');



-- Criação de tabela fabricante
CREATE TABLE fabricante(
	cod_fabricante int primary key,
	nome varchar(30),
	site varchar(20),
	email varchar(30) UNIQUE
);

-- Populando a tabela de fabricante
INSERT INTO fabricante (cod_fabricante, nome, site, email) VALUES 
(1, 'Joaquin', 'cbc.ca', 'jmalser0@istockphoto.com'),
(2, 'Kizzee', 'ucsd.edu', 'kchaimson1@pagesperso.fr'),
(3, 'Melony', 'archive.org', 'mpettet2@nbcnews.com'),
(4, 'Buffy', 'cargocollective.com', 'bmille3@dell.com'),
(5, 'Kelsi', 'ftc.gov', 'kterrett4@about.me'),
(6, 'Jarrett', 'bravesites.com', 'jbescoby5@oaic.gov.au'),
(7, 'Dalli', '360.cn', 'dwinters6@seesaa.net'),
(8, 'Rosette', 'pinterest.com', 'rcowans7@meetup.com'),
(9, 'Niccolo', 'berkeley.edu', 'npammenter8@fotki.com'),
(10, 'Abeu', 'whitehouse.gov', 'avannah9@i2i.jp'),
(11, 'Delilah', 'oakley.com', 'dblewa@apache.org'),
(12, 'Joya', 'canalblog.com', 'jespinasb@cafepress.com'),
(13, 'Berget', 'pinterest.com', 'btommeoc@quantcast.com'),
(14, 'Zorine', 'ox.ac.uk', 'zroadnightd@amazon.de'),
(15, 'Cherri', 'google.de', 'cronaldsone@tinypic.com'),
(16, 'Wynn', 'ted.com', 'wcastelotf@xinhuanet.com'),
(17, 'Etheline', 'bing.com', 'ecobbyg@opera.com'),
(18, 'Nell', 'infoseek.co.jp', 'nbetserh@nsw.gov.au'),
(19, 'Min', 'free.fr', 'mindgei@friendfeed.com'),
(20, 'Danya', 'umich.edu', 'dantragj@slate.com'),
(21, 'Belita', 'seesaa.net', 'bcrucettik@example.com'),
(22, 'Elfrieda', 'bluehost.com', 'eerrichil@house.gov'),
(23, 'Adeline', 'a8.net', 'aparkynsm@gmpg.org'),
(24, 'Lulu', 'imgur.com', 'lcavenn@wikispaces.com'),
(25, 'Floyd', 'google.com.au', 'fcrossono@dropbox.com'),
(26, 'Shell', 'dell.com', 'sseagravep@who.int'),
(27, 'Ade', 'netlog.com', 'ajackmanq@weibo.com'),
(28, 'Norrie', 'scientific.com', 'ncamockr@engadget.com'),
(29, 'Risa', 'ebay.uk', 'rpakenhams@ehow.com'),
(30, 'Carr', 'newyorker.com', 'ccrossert@toplist.cz');


-- Criação de tabela produto
CREATE TABLE produto (
	cod_produto int primary key,
	nome  varchar(30)  NOT NULL,
	preco real  NOT NULL,
	descricao varchar(30),
    cod_fabricante int,
	FOREIGN KEY (cod_fabricante) REFERENCES fabricante(cod_fabricante),
    CHECK (preco > 0)
);

-- Populando a tabela de produto
INSERT INTO produto (cod_produto, nome, descricao, preco, cod_fabricante) VALUES
(1, 'requeijão', 'M', 11.06, 4),
(2, 'macarrão', 'M', 14.59, 5),
(3, 'chuchu', 'P', 3.02, 6),
(4, 'abobrinha', 'P', 4.18, 7),
(5, 'leite', 'P', 4.08, 8),
(6, 'vassoura', 'P', 6.32, 9),
(7, 'pasta de dente', 'P', 1.52, 1),
(8, 'macarrão', 'P', 6.34, 3),
(9, 'leite', 'P', 4.08, 2),
(10, 'vassoura', 'P', 6.32, 20),
(11, 'vassoura', 'M', 11.95, 18),
(12, 'manteiga', 'G', 14.59, 19),
(13, 'arroz', 'G', 19.36, 17),
(14, 'manteiga', 'M', 9.98, 15),
(15, 'feijão', 'G', 13.87, 16),
(16, 'queijo', 'G', 17.87, 14),
(17, 'pasta de dente', 'M', 7.22, 13),
(18, 'pasta de dente', 'P', 1.52, 11),
(19, 'manteiga', 'M', 9.98, 12),
(20, 'abobrinha', 'G', 13.86, 10),
(21, 'leite', 'P', 3.76, 30),
(22, 'abobrinha', 'P', 4.18, 28),
(23, 'beterraba', 'P', 2.87, 29),
(24, 'contra filé', 'M', 33.50, 26),
(25, 'abóbora', 'P', 1.38, 27),
(26, 'feijão', 'P', 7.28, 24),
(27, 'abóbora', 'P', 1.38, 23),
(28, 'queijo', 'G', 17.87, 25),
(29, 'chuchu', 'G', 9.45, 22),
(30, 'presunto', 'M', 15.37, 21);

-- Criação de tabela compra
CREATE TABLE compra (
	cod_compra int primary key,
	dt_data date,
	hora time,
    coddcliente int,
    cod_funcionario int,
    FOREIGN KEY (coddcliente) REFERENCES cliente(coddcliente),
    FOREIGN KEY (cod_funcionario) REFERENCES funcionario(cod_funcionario)
);

-- Populando a tabela de compra
INSERT INTO compra (cod_compra, dt_data, hora, coddcliente, cod_funcionario) VALUES
(1, '2023-06-30', '09:43:00', 1, 1),
(13, '2023-06-05', '04:55:00', 2, 2),
(10, '2023-04-17', '03:56:00', 3, 3),
(23, '2023-11-02', '08:08:00', 4, 4),
(30, '2023-06-28', '11:42:00', 5, 5),
(8, '2023-12-24', '02:21:00', 6, 6),
(7, '2023-08-20', '02:25:00', 7, 7),
(4, '2023-01-17', '03:42:00', 8, 8),
(12, '2023-08-04', '07:14:00', 9, 9),
(25, '2023-10-12', '08:59:00', 10, 10),
(9, '2024-04-04', '11:30:00', 11, 11),
(15, '2024-01-21', '01:51:00', 12, 12),
(24, '2023-09-06', '09:42:00', 13, 13),
(18, '2023-06-19', '11:25:00', 14, 14),
(22, '2023-03-08', '04:01:00', 15, 15),
(27, '2023-05-19', '04:58:00', 16, 16),
(11, '2024-02-06', '01:27:00', 17, 17),
(19, '2023-05-06', '02:36:00', 18, 18),
(16, '2023-01-15', '01:00:00', 19, 19),
(6, '2023-07-23', '03:01:00', 20, 20),
(21, '2023-07-20', '05:11:00', 21, 21),
(20, '2024-01-18', '05:03:00', 22, 22),
(17, '2023-06-22', '02:16:00', 23, 23),
(31, '2023-11-26', '10:38:00', 24, 24),
(26, '2023-01-25', '12:07:00', 25, 25),
(14, '2023-06-07', '05:11:00', 26, 26),
(28, '2024-04-11', '07:47:00', 27, 27),
(29, '2023-11-08', '04:29:00', 28, 28),
(2, '2023-01-24', '11:48:00', 29, 29),
(3, '2023-12-10', '04:07:00', 30, 30);

-- Criação de tabela possui
CREATE TABLE possui (
	cod_compra int,
	cod_produto int,
	valor_desconto real,
	qtd int,
	FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto),
	FOREIGN KEY (cod_compra) REFERENCES compra(cod_compra)
);

-- Populando a tabela de possui
INSERT INTO possui (cod_compra, cod_produto, valor_desconto, qtd) VALUES
(1, 1, 4.00, 820),
(10, 2, 3.00, 969),
(13, 3, 3.00, 661),
(23, 4, 3.00, 166),
(30, 5, 1.00, 614),
(8, 6, 2.00, 315),
(7, 7, 5.00, 318),
(4, 8, 4.00, 187),
(12, 9, 3.00, 176),
(25, 10, 1.00, 981),
(9, 11, 5.00, 892),
(15, 12, 1.00, 30),
(24, 13, 3.00, 684),
(18, 14, 4.00, 691),
(22, 15, 4.00, 923),
(27, 16, 2.00, 483),
(11, 17, 4.00, 262),
(19, 18, 4.00, 236),
(16, 19, 1.00, 525),
(6, 20, 3.00, 964),
(21, 21, 5.00, 538),
(20, 22, 1.00, 166),
(17, 23, 5.00, 4),
(31, 24, 3.00, 592),
(26, 25, 1.00, 98),
(14, 26, 5.00, 116),
(28, 27, 1.00, 754),
(29, 28, 2.00, 356),
(2, 29, 1.00, 154),
(3, 30, 2.00, 942);





DROP TABLE possui;
DROP TABLE compra;
DROP TABLE cliente;
DROP TABLE produto;
DROP TABLE fabricante;
DROP TABLE funcionario;

-- EX2

-- a) Recupere o nome, a cidade e o gênero dos clientes solteiros

-- b) Recupere, em ordem alfabética, o nome de todas as cidades que possuem clientes

-- c) Recupere o nome dos clientes que não realizaram compras de produtos de valores acima de 1000 Reais

-- d) Recupere o nome do cliente, o nome do funcionário e o site da marca do produto que ele comprou

-- e) Recupere o total de funcionários com idade maior que 60 anos, cujo estado civil seja Viúvo(a)

-- f) Recupere as 5 compras mais baratas

-- g) Recupere quantidade total de vendas de produtos acima de 100 Reais

-- h) Recupere a lista de produtos, em ordem alfabética, que nunca foram vendidos

-- i) Recupere a valor total de compras realizadas por cada fabricante

-- j) Recupere o valor total de compras que cada funcionário realizou














