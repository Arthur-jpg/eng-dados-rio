create schema estudo01;
use estudo01;
drop schema estudo01;


-- DDL - create, alter ...

-- ex1
CREATE TABLE aluno(
	matricula integer primary key,
    nomeAluno varchar(30) not null,
    sexo char(1),
    dtnascimento date    
);
-- ex2
create table departamento(
	codDepartamento integer primary key,
    nomeDepto varchar(30)
);

-- ex3
create table curso (
codCurso int primary key,
nomeCurso varchar(30) not null,
ch int,
preco real,
codDepartamento int,
foreign key (codDepartamento) references departamento (codDepartamento)
);

-- ex4
create table matricula (
	dtMatricula date,
    matricula int,
    codCurso int,
    primary key(codCurso, matricula),
    foreign key (matricula) references aluno(matricula),
    foreign key (codCurso) references curso(codCurso)
);

-- ex5
create table func (
	codfunc int primary key,
    nomeFunc varchar(20),
    city varchar(20),
    CBO int,
    UF char(2),
    codDepartamento integer,
    foreign key (codDepartamento) references departamento(codDepartamento)
);

-- ex 14
create table telefone (
	codtel serial primary key,
    ddd int,
    numero varchar(13),
    codfunc int,
    foreign key (codfunc) references func(codfunc)
);

-- linguagem DML
-- insert e update

insert into aluno (matricula, nomeAluno, sexo, dtnascimento) values (1, 'Ana', 'F', '1979-01-03');

-- ex 18
insert into aluno (matricula, nomeAluno, sexo, dtnascimento) values 
(2, 'André', 'M', '1980-11-20'), 
(3, 'Andreia', 'F', '1985-05-09'),
(4, 'Bruna', 'F', '1980-11-20'),
(5, 'Bruno', 'M', '1982-01-12');

-- ex 20
insert into curso (codCurso, nomeCurso, ch, preco, codDepartamento) values 
(1, 'Python', 40, 1200, 1),
(2, 'Power BI', 20, 900, 1),
(3, 'Pentaho', 40, 1200, 1),
(4, 'Recursos Humanos', 60, 2000, 2),
(5, 'Marketing', 80, 2500, 1);

-- alter
update curso set preco = 1000 where nomeCurso = 'Power BI';

update curso set codDepartamento = 2 where nomeCurso = 'Marketing';
