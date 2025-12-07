create database crm_ecommerce;

select*from usuarios;

-- todos os usuarios que gastam mais de R$100 em media
SELECT*FROM usuarios
WHERE ticket_medio > 100;

-- selecionado todos usuarios com status inativos
select*from usuarios
where status = 'inativo';

-- Usuarios com ticket medio acima de 100
select*from usuarios
where ticket_medio >100;

-- ticket medio acima de 100 de usuarios inativos
select*from usuarios
where status = 'inativo'
	and ticket_medio >100;

-- usuários com mais de 30 dias desde a última compra
SELECT*FROM usuarios
WHERE DATEDIFF(CURRENT_DATE(), data_ultima_compra) > 30;

-- Usuarios inativos com ticket alto com mais de 30 dias sem comprar
select*from usuarios
where status = 'inativo'
	and ticket_medio > 100
    and datediff(current_date(), data_ultima_compra) > 30;

-- ticket medio geral
select avg(ticket_medio)
from usuarios;

-- usuarios inativos ao total
select count(*)
from usuarios
where status = 'inativo';

-- canais preferido dos clientes!
select canal_preferido, count(*)
from usuarios
group by canal_preferido;

-- Usuarios ativos que comparam pelo menos 5 vezes
select*from usuarios
where status = 'ativo'
	and ticket_medio > 150
	and numero_compras >= 5;

-- Usuarios inativos canal preferido é whatsapp ticket medio menor que 80
select*from usuarios
where status = 'inativo'
	and canal_preferido = 'whatsapp'
    and ticket_medio < 80;

-- Usuarios existentes por cada canal
select canal_preferido, count(*) as total
from usuarios
group by canal_preferido;

-- ticket medio por canal
select canal_preferido, avg(ticket_medio) as media_ticket
from usuarios
group by canal_preferido;










