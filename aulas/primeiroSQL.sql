CREATE SCHEMA aulat;
USE aulat;

CREATE TABLE aluno(
	matricula integer primary key,
    nomeAluno varchar(30) not null,
    sexo char(1),
    dtnascimento date    
);

create table departamento(
	codDepartamento integer primary key,
    nomeDepto varchar(30)
);

create table curso (
codCurso int primary key,
nomeCurso varchar(30) not null,
ch int,
preco real,
codDepartamento integer,
foreign key(codDepartamento) references departamento(codDepartamento)

);


create table matriculas (
	matricula integer,
    codCurso integer,
    dtmatricula date,
    primary key(matricula,codcurso),
    foreign key (matricula) references aluno(matricula),
	foreign key (codCurso) references curso(codCurso)
);


