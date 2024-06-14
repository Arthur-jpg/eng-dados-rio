/* GRUPO X 
202307300349 / Kaio Soares Alves
202302532888 / Arthur Camaz Pinto
202402851756 / Arthur Peixoto Schiller
202307539783/ Maria Claudia Freitas
*/

-- CONSTRUINDO O BANCO

CREATE SCHEMA GRUPO001;

use GRUPO001;

-- Criando tabelas

-- TABELA funcionario 
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

-- TABELA fabricante 
CREATE TABLE fabricante(
	cod_fabricante int primary key,
	nome varchar(30),
	site varchar(20),
	email varchar(30) UNIQUE
);

-- TABELA cliente 
CREATE TABLE cliente(
	coddcliente int primary key,
	nome varchar(30),
	cidade varchar(30),
	estado char(2),
	genero char(1),
	dt_nascimento date,
	estadocivil char(1),
    CONSTRAINT chk_genero_cl CHECK (genero IN ('M', 'F'))
);

-- TABELA produto 
CREATE TABLE produto(
	cod_produto int primary key,
	nome  varchar(30)  NOT NULL,
	preco real  NOT NULL,
	descricao varchar(30),
    cod_fabricante int,
	FOREIGN KEY (cod_fabricante) REFERENCES fabricante(cod_fabricante),
    CHECK (preco > 0)
);

-- TABELA compra 
CREATE TABLE compra(
	cod_compra int primary key,
	dt_data date,
	hora time,
    coddcliente int,
    cod_funcionario int,
    FOREIGN KEY (coddcliente) REFERENCES cliente(coddcliente),
    FOREIGN KEY (cod_funcionario) REFERENCES funcionario(cod_funcionario)
);

-- TABELA possui 
create table possui (
	cod_compra int,
	cod_produto int,
	valor_desconto real,
	qtd int,
	FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto),
	FOREIGN KEY (cod_compra) REFERENCES compra(cod_compra)
);

DROP TABLE funcionario;
DROP TABLE fabricante;
DROP TABLE cliente;
DROP TABLE produto;
DROP TABLE compra;
DROP TABLE possui;


-- POPULANDO TABELAS



-- EX2
-- A
-- B
-- C
-- D 
-- E 
-- F
-- G 
-- H 
-- I 
-- J
