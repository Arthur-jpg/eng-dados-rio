USE aulat;
-- ex 22
insert into funcionario (codFunc, nomeFunc, cidade, uf, codDepartamento, sexo) values 
(1, 'Paulo', 'Duque de Caxias', 'RJ', 1, 'M'),
(2, 'Paula', 'Rio de Janeiro', 'RJ', 2, 'F'),
(3, 'José', 'Rio de Janeiro', 'RJ', 1, 'M');


-- ex 23
select * from curso; -- para ver a tabela
update curso set preco = 1000 where nomeCurso =  'Power BI';

-- ex 24
update curso set codDepartamento = 2 where nomeCurso = 'Marketing';

-- ex 25
update curso set ch = 80 where nomeCurso = 'Recursos Humanos';

-- ex 26
select * from curso;
update curso set preco = preco * 1.2 where codDepartamento = 1;

-- ex 27
update curso set preco = preco - 50 where codDepartamento = 2;

-- ex 28
update curso set preco = preco*0.9 where ch < 80 and preco > 1000;

-- ex 29
select * from funcionario;
delete from funcionario;

-- ex 30
select * from matriculas;
delete from matriculas where dtmatricula > '2019-04-04' and matricula = 3;

-- teste
create table teste1 (
	id int auto_increment,
    curso char(1),
    -- usamos a constraint com nome porque ai fica mais fácil de identificar quando da um erro
    -- por exemplo uma unique ele vai dar o nome da constraint como no exemplon 31
    constraint curso_nm unique (curso),
    constraint pk_teste1 primary key(id)
);

create table teste2 (
	id int auto_increment,
    situacao char(1) constraint tp_sit check (situacao in ('A', 'I')),
    teste_fk int,
    constraint pk_teste2 primary key (id),
    constraint fk_teste foreign key(teste_fk) references teste1(id)
);


-- ele vai criar o curso A com a chave primaria 1
insert into teste1 (curso) values ('A');
select * from teste1 order by id asc;

-- ex 31
-- testar unique
-- tem que dar erro, porque como é unique ele não pode estar duplicad
insert into teste1 (curso) values ('A');

-- como tentamos adicionar o A novamente ele teve ocupou o lugar do 2 sendo assim os próximos começam do 3
-- porque como ele não conseguiu add o A novamente adicionou de pois deletou 
insert into teste1 (curso) values ('B');
insert into teste1 (curso) values ('C');
insert into teste1 (id, curso) values (2,'D');


-- testar a tabela teste 2
-- testar o check
insert into teste2 (situacao, teste_fk) values ('A', 1);

-- nao pode funcionar
insert into teste2 (situacao, teste_fk) values ('N', 1);

-- Exemplos


-- teste de delete set null
create table pessoa (
idpessoa int auto_increment primary key,
nome varchar(20)
);

create table carro (
idcarro int auto_increment primary key,
modelo varchar(20),
idpessoa int,
foreign key (idpessoa) references pessoa(idpessoa) on delete set null
);

insert into pessoa (nome) values ('Ana'), ('Bruna'), ('Carla');
insert into carro (modelo, idpessoa) values ('Uno', 2), ('Palio', 3), ('Gol', 1), ('Mobi', 2), ('Toyota', 2);

select * from carro;

delete from pessoa where idpessoa = 1;

select * from carro;

-- teste delete cascade
create table pessoa2 (
idpessoa int auto_increment primary key,
nome varchar(20)
);

create table carro2 (
idcarro int auto_increment primary key,
modelo varchar(20),
idpessoa int,
foreign key (idpessoa) references pessoa2(idpessoa) on delete cascade
);

insert into pessoa2 (nome) values ('Ana'), ('Bruna'), ('Carla');
insert into carro2 (modelo, idpessoa) values ('Uno', 2), ('Palio', 3), ('Gol', 1), ('Mobi', 2), ('Toyota', 2);

select * from pessoa2;
select * from carro2;

delete from pessoa2 where idpessoa = 2;
select * from carro2;

-- teste delete para restrict
create table pessoa3 (
idpessoa int auto_increment primary key,
nome varchar(20)
);

create table carro3 (
idcarro int auto_increment primary key,
modelo varchar(20),
idpessoa int,
foreign key (idpessoa) references pessoa2(idpessoa) on delete cascade
);

drop table carro3;
drop table pessoa3;
create table pessoa3 (
idpessoa int auto_increment primary key,
nome varchar(20)
);

create table carro3 (
idcarro int auto_increment primary key,
modelo varchar(20),
idpessoa int,
foreign key (idpessoa) references pessoa3(idpessoa) on delete restrict
);

insert into pessoa3 (nome) values ('Ana'), ('Bruna'), ('Carla');
insert into carro3 (modelo, idpessoa) values ('Uno', 2), ('Palio', 3), ('Gol', 1), ('Mobi', 2), ('Toyota', 2);

delete from pessoa3 where idpessoa = 3;

create schema armazemt;

select * from carro2;

