-- Nome usuario + Valor da compra
select usuarios.nome, compras.valor_compra
from usuarios
join compras
on usuarios.user_id = compras.user_id;

-- mostrar nome do usuario e a data da compra usando join
select usuarios.nome, compras.data_compra
from usuarios
join compras
on usuarios.user_id = compras.user_id;

-- 
select usuarios.nome, compras.valor_compra, compras.data_compra
from usuarios
join compras
on usuarios.user_id = compras.user_id;


-- Quantas compras cada usuarios fez
select usuarios.nome, count(*) as total_compras
from usuarios
join compras
	on usuarios.user_id = compras.user_id
group by usuarios.nome;