use armazemt;

-- ex 21
select p.nomeproduto, m.nomemarca from produto as p, marca as m where p.idmarca = m.idmarca;

-- ex 22
select cli.nomecliente, p.nomeproduto from cliente as cli, produto as p, compras as comp where cli.idcliente = comp.idcliente and comp.idproduto = p.idproduto order by cli.nomecliente, p.nomeproduto asc;

-- ex 23
select cli.nomecliente, lj.uf, lj.nomeloja, comp.qtd 
from cliente as cli, compras as comp, loja as lj 
where lj.idloja = comp.idloja and cli.idcliente = comp.idcliente and comp.qtd > 40;

-- ex 24

select p.nomeproduto, p.preco, m.nomemarca 
from produto as p 
inner join marca as m 
on p.idmarca = m.idmarca;

-- ex 25
select m.nomemarca, comp.dtcompra, comp.qtd
from marca as m 
inner join produto as pr on m.idmarca = pr.idmarca
inner join compras as comp on pr.idproduto = comp.idproduto;

-- ex 26 

select cli.nomecliente, p.nomeproduto, com.qtd
from cliente as cli
inner join  compras as com
on cli.idcliente = com.idcliente
inner join produto as p
on com.idproduto = p.idproduto;

INSERT INTO cliente 
(idcliente,nomecliente,genero,estadocivil,dtnascimento,cidade,estado) 
VALUES 
(501, 'Alba', 'F', 'V', '1982/10/25', 'Duque de Caxias','Rio de Janeiro'), 
(502, 'Solimar', 'F', 'V', '1972/11/25', 'Niterói','Rio de Janeiro'),
(503, 'Pablo', 'M', 'C', '1999/03/01', 'Nova Iguaçu','Rio de Janeiro'),
(504, 'Solange', 'F', 'S', '1979/06/05', 'Salvador', 'Bahia'),
(505, 'Mário', 'M', 'S', '1985/07/22', 'Bragança Paulista', 'São Paulo');

select cli.nomecliente, comp.idcompra
from cliente as cli
left join compras as comp
on cli.idcliente = comp.idcliente;


-- ex 28

INSERT INTO marca (idmarca,nomemarca) 
VALUES 
(6,'Delícia de Prato'), 
(7,'Pajé');

select ma.nomemarca, pr.nomeproduto
from produto as pr
right join marca as ma
on pr.idmarca = ma.idmarca;


