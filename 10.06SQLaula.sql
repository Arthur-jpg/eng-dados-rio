use armazemt;

-- ex 1
select distinct estado from cliente
union
select case 
	when uf = 'RJ' then 'Rio de Janeiro'
	when uf = 'MG' then 'Minas Gerais'
	when uf = 'PA' then 'Pará'
	when uf = 'GO' then 'Goiás'
	when uf = 'RS' then 'Rio Grande do Sul'
	when uf = 'AM' then 'Amazonas'
	when uf = 'PE' then 'Pernambuco'
	when uf = 'CE' then 'Ceará'
    else 'Não encontrado'
    end as estado
from loja;

-- ex 2
select distinct estado
from cliente
where genero = 'F' 
and idcliente not in (select idcliente from compras)
union all
select case 
	when uf = 'RJ' then 'Rio de Janeiro'
	when uf = 'MG' then 'Minas Gerais'
	when uf = 'PA' then 'Pará'
	when uf = 'GO' then 'Goiás'
	when uf = 'RS' then 'Rio Grande do Sul'
	when uf = 'AM' then 'Amazonas'
	when uf = 'PE' then 'Pernambuco'
	when uf = 'CE' then 'Ceará'
    else 'Não encontrado'
    end as estado
from loja;

-- ex 3
select distinct estado from cliente
intersect 
select case 
	when uf = 'RJ' then 'Rio de Janeiro'
	when uf = 'MG' then 'Minas Gerais'
	when uf = 'PA' then 'Pará'
	when uf = 'GO' then 'Goiás'
	when uf = 'RS' then 'Rio Grande do Sul'
	when uf = 'AM' then 'Amazonas'
	when uf = 'PE' then 'Pernambuco'
	when uf = 'CE' then 'Ceará'
    else 'Não encontrado'
    end as estado
from loja;



select distinct nomecliente
from cliente
where estado in('Rio de Janeiro', 'São Paulo', 'Espirito Santo', 'Minas Gerais')
intersect 
select cl.nomecliente
from cliente as cl, compras as co
where co.idcliente = cl.idcliente;

-- ex 5
-- subquery
select nomeproduto
from produto
where idproduto not in (select idproduto from compras);

-- intersect
select nomeproduto
from produto
except
select pr.nomeproduto
from compras as co, produto as pr
where co.idproduto = pr.idproduto;

-- ex 06
-- subquery (consertar)
select nomecliente
from cliente
where genero = 'F' and idcliente not in (select idcliente from compras);

-- intersect
select nomecliente 
from cliente
where genero = 'F'
except
select cli.nomecliente
from compras as co, cliente as cli
where co.idcliente = cli.idcliente;

-- ex 07
select nomecliente, nomeproduto
from cliente
cross join produto;

-- procedure
create procedure consultaproduto(p_produto integer)
select pr.idproduto, pr.nomeproduto, count(*) as vendas
from compras as co
inner join produto as pr
on co.idproduto = pr.idproduto
where co.idproduto = p_produto
group by pr.idproduto, pr.nomeproduto;

call consultaproduto (3);

drop procedure consultaproduto;

create procedure consultaproduto(p_produto integer)
select pr.idproduto, pr.nomeproduto, count(*) as vendas, sum(co.qtd * pr.preco) as faturamento, sum(co.qtd) as unidades
from compras as co
inner join produto as pr
on co.idproduto = pr.idproduto
where co.idproduto = p_produto
group by pr.idproduto, pr.nomeproduto;

call consultaproduto (5);