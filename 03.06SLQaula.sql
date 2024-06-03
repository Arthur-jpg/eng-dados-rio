use armazemt;

-- ex 21
select estado, count(*) as total 
from cliente 
group by estado
having total > 50;

-- ex 22
select marca.nomemarca, sum(compras.qtd *produto.preco) as faturamento
from marca as marca, compras as compras, produto as produto
where marca.idmarca = produto.idmarca and compras.idproduto = produto.idproduto
group by marca.idmarca
having faturamento > 25000
order by faturamento desc;

-- ex 23
select cliente.nomecliente, count(compras.idcompra) as quantidade
from cliente, compras
where cliente.idcliente = compras.idcliente
group by cliente.idcliente
having quantidade < 5
order by quantidade desc;

-- ex de subconsultas

select nomeproduto, max(preco)
from produto;
-- esse caso só se resolve usando subquary
-- a primeira para o max e segunda para o nome

select produto.nomeproduto, produto.preco
from produto
where produto.preco = ( select max(produto.preco) from produto);


-- ex 24
select nomeproduto, preco
from produto
where preco = (select min(preco) from produto);

insert into produto (idproduto, nomeproduto,idmarca,preco)
values
(11, 'Milho em Lata', 3, 3.60),
(12, 'ervilha em Lata',2, 3.90),
(13, 'Sardinha em Lata',1,4.90);

-- ex 25
select cliente.nomecliente
from cliente
where cliente.idcliente not in (select count(compras.idcompra) as total
from compras
having total > 0
order by cliente.idcliente);

-- correção 
select idcliente, nomecliente
from cliente
where idcliente not in (
	select distinct cliente.idcliente
	from cliente,compras
	where cliente.idcliente = compras.idcliente
);

-- ex 26
select nomeproduto
from produto
where nomeproduto not in(
	select distinct pr.nomeproduto
	from produto as pr, compras as co
	where pr.idproduto = co.idproduto
	and year(dtcompra) = '2021'
);


-- visão
-- ex 27
create or replace view vw_produtolista as
(
select produto.idproduto, produto.nomeproduto, produto.preco, marca.nomemarca
from produto, marca
where produto.idmarca = marca.idmarca
order by produto.idproduto asc
);

select * from vw_produtolista;


-- ex 28
create or replace view vw_compraslista as 
(
select compras.idcompra, cliente.nomecliente, produto.nomeproduto, marca.nomemarca, loja.nomeloja, compras.dtcompra, compras.qtd, produto.preco, compras.qtd*produto.preco as valor
from compras, cliente, produto, marca, loja
where compras.idproduto = produto.idproduto and compras.idcliente = cliente.idcliente and compras.idloja = loja.idloja and produto.idmarca = marca.idmarca
order by compras.idcompra
);

select sum(valor) from vw_compraslista;
