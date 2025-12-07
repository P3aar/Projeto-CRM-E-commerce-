-- top 3 clientes por gasto total
select u.user_id, u.nome, sum(c.valor_compra) as total_gasto -- pega id, nome e soma do gasto
from usuarios u -- junta as duas tabelas pelo user_id
join compras c 
on u.user_id = c.user_id 
group by u.user_id, u.nome
order by total_gasto desc -- ordena do maior gasto para o menor
limit 3; -- pega só os três primeiros (top 3).

--
select u.user_id, u.nome, 
	count(c.id_compra) as total_compras,
	sum(c.valor_compra) as total_gasto
from usuarios u 
join compras c
on u.user_id = c.user_id
group by u.user_id, u.nome
order by total_gasto desc, total_compras desc
limit 3;

-- 
SELECT u.user_id, u.nome,
       SUM(c.valor_compra) AS total_gasto,
       ROUND(100.0 * SUM(c.valor_compra) / t.total_geral, 2) AS pct_receita -- Calcula a participação percentual do total gasto desse cliente sobre a receita total.
FROM usuarios u
JOIN compras c
  ON u.user_id = c.user_id
CROSS JOIN (
    SELECT SUM(valor_compra) AS total_geral
    FROM compras
) t
GROUP BY u.user_id, u.nome, t.total_geral
ORDER BY total_gasto DESC
LIMIT 3;