use armazemt;

-- funções
-- ex 01
select max(preco) from produto;

-- ex 02
select min(qtd) from compras;

-- ex 03
select round(avg(qtd), 2) from compras;

-- ex 04
select count(idcliente) from cliente where estado = 'Rio de Janeiro';

-- ex 05
select avg(preco) from produto;

-- ex 06
select  count(*) from produto as p, marca as m, compras as c where p.idmarca = m.idmarca and c.idproduto = p.idproduto and m.nomemarca = 'Bom Prato';

-- ex 07
select sum(c.qtd) from compras as c, loja as l where c.idloja = l.idloja and nomeloja = 'Vale Verde';

-- ex 08
select sum(c.qtd) from compras as c, loja as l where c.idloja = l.idloja  and l.uf = 'MG';

-- 09
update produto set nomeproduto = 'Macarrão' where idproduto = 5;
select sum(c.qtd) from compras as c, produto as p where c.idproduto = p.idproduto and p.nomeproduto = 'Macarrão';
select * from produto;

-- ex 10
select sum(c.qtd) from compras as c;

-- ex 11 -> group
select count(*), estado
from cliente 
group by estado;

-- ex 12 
select count(*), uf
from loja
group by uf;

-- ex 13
select ma.nomemarca, count(*) as produtos
from produto as pr, marca as ma
where pr.idmarca = ma.idmarca
group by ma.nomemarca;

-- ex 14 -- exercicio importante
select round(sum(pr.preco * co.qtd),0) as total, ma.nomemarca
from produto as pr, marca as ma, compras as co
where pr.idmarca = ma.idmarca and pr.idproduto = co.idproduto
group by ma.nomemarca;

-- ex 15
select avg(c.qtd) as media, p.nomeproduto
from produto as p, compras as c
where p.idproduto = c.idproduto
group by p.nomeproduto;

-- ex 16
select sum(c.qtd*p.preco) as fat, l.nomeloja
from produto as p, compras as c, loja as l
where p.idproduto = c.idproduto and l.idloja = c.idloja
group by l.nomeloja;

-- ex 17
select sum(c.qtd) as quantidade, cli.nomecliente
from compras as c, cliente as cli
where  c.idcliente = cli.idcliente
group by cli.nomecliente
order by quantidade desc;

-- ex 18
select count(*) as quantidade, cli.cidade
from cliente as cli
group by cli.cidade 
order by quantidade desc
limit 5;

-- ex 19
select p.nomeproduto, sum(c.qtd) as total
from produto as p, compras as c
where p.idproduto = c.idproduto
group by p.nomeproduto
order by total desc;



-- ex 20
select cli.nomecliente, sum(c.qtd*p.preco) as gasto
from cliente as cli, compras as c, produto as p
where cli.idcliente = c.idcliente and p.idproduto = c.idproduto
group by cli.nomecliente
order by gasto desc
limit 5;



