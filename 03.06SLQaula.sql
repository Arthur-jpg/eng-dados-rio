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
(13, 'Sardinha em Lata',1,4.90)

-- ex 25


