use armazemt;

select * from cliente;

desc cliente;
-- recupere o nome e o sexo de todos os clientes
select nomecliente, genero from cliente;

-- ex2
desc produto;

select nomeproduto,preco from produto;

-- ex3
desc compras;
select idcompra,dtcompra from compras;

-- ex4
desc cliente;
select nomecliente, estadocivil,cidade from cliente;

-- ex5
select * from cliente;

-- ex6
select nomecliente, estadocivil from cliente order by nomecliente asc;

-- ex7
select nomeproduto,preco from produto order by preco desc;

-- ex8
select nomecliente, estado, cidade from cliente order by estado, cidade asc;

-- ex9
select distinct estado from cliente;

-- ex10
select distinct dtcompra from compras order by dtcompra desc;

-- ex 11
desc produto;
select nomeproduto from produto where preco > 5;

-- ex 12
desc cliente;
select nomecliente, estadocivil from cliente where genero = "F";

-- ex 13
select nomecliente, cidade from cliente where estado = 'Rio de Janeiro';

-- ex 14

select nomecliente, YEAR(FROM_DAYS(DATEDIFF(current_date, dtnascimento))) as idade from cliente where YEAR(FROM_DAYS(DATEDIFF(current_date, dtnascimento))) > 20 order by idade asc;

-- ex 15
desc compras;
select distinct idcliente from compras where dtcompra between '2021-01-01' and '2021-12-31' order by idcliente asc;

-- ex 16
select extract(year from dtnascimento) as ano from cliente;

select distinct idcliente, extract(year from dtcompra) as ano from compras where extract(year from dtcompra) = '2020';


select distinct idcliente from compras where extract(year from dtcompra) = '2020';

-- 17	
select nomecliente from cliente where nomecliente like 'A%';

-- ex 18
select nomecliente from cliente where nomecliente like '%ANA%';

-- ex 19
select nomecliente, estadocivil, estado from cliente where estado in ('Rio de Janeiro', 'Minas Gerais', 'Espirito Santo', 'Sao Paulo');

-- ex 20
select nomecliente,
	case 
		when estadocivil = 'V' then 'viuvo'
		when estadocivil = 'S' then 'solteiro'
		when estadocivil = 'C' then 'casado'
        when estadocivil = 'D' then 'divorciado'
    else 'Ines'
    end
    as estadocivil
 from cliente;
 
select distinct estadocivil from cliente;