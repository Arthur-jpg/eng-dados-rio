USE aulat;
create table func (
	codfunc int primary key,
    nomeFunc varchar(20),
    city varchar(20),
    CBO int,
    UF char(2),
    codDepartamento integer,
    foreign key (codDepartamento) references departamento(codDepartamento)
);


alter table func rename column city to cidade;

alter table func add column sexo char(1);

alter table func modify column nomeFunc varchar(30);

alter table func drop column CBO;

alter table func alter column UF set default "Rj";

alter table func rename to funcionario;

alter table funcionario  modify column nomeFunc varchar(20) not null;

-- mesmo esquema do de cima, tem que mostar o tipo do dado antes de alterar
alter table funcionario modify column codFunc int auto_increment;

-- ex 14
create table telefone (
	codeTel serial primary key,
    ddd int,
    numero varchar(13),
    codfunc int,
    foreign key (codfunc) references funcionario(codfunc)
);

-- ex 15
drop table funcionario;

-- ex 16
drop table telefone;

-- ex 17
insert into aluno (matricula, nomeAluno, sexo, dtnascimento) values (1, 'Ana', 'F', '1979-01-23');

select * from aluno;

-- ex 18

insert into aluno (matricula, nomeAluno, sexo, dtnascimento) values 
(2, 'André', 'M', '1980-11-20'), 
(3, 'Andreia', 'F', '1985-05-09'),
(4, 'Bruna', 'F', '1980-11-20'),
(5, 'Bruno', 'M', '1982-01-12');


select * from aluno;
-- ex 19
insert into departamento (codDepartamento, nomeDepto) values (1,'TI'),(2, 'ADM');
select * from departamento;
-- ex 20
insert into curso (codCurso, nomeCurso, ch, preco, codDepartamento) values 
(1, 'Python', 40, 1200, 1),
(2, 'Power BI', 20, 900, 1),
(3, 'Pentaho', 40, 1200, 1),
(4, 'Recursos Humanos', 60, 2000, 2),
(5, 'Marketing', 80, 2500, 1);

-- isso é um dql, não vimos ainda, estamos experimentando
select nomeAluno from aluno where sexo = 'F';

-- isso é não faz parte da matéria ainda
select nomeCurso,ch from curso where preco < 1500;

select * from curso;

select * from aluno;

-- ex 20 -> tabela muitos para muitos
insert into matriculas (matricula, codCurso, dtmatricula) values (1,1,'2019-04-01'),
(2,1,'2019-04-01'),
(4,1,'2019-04-01'),
(4,2,'2019-04-02'),
(5,2,'2019-04-02'),
(1,2,'2019-04-02'),
(1,3,'2019-04-03'),
(5,3,'2019-04-03'),
(3,3,'2019-04-03'),
(2,3,'2019-04-03'),
(4,3,'2019-04-03'),
(5,4,'2019-04-04'),
(3,4,'2019-04-04'),
(5,5,'2019-04-06'),
(3,5,'2019-04-06'),
(2,5,'2019-04-06');

select count(*) from matriculas;
