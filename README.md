# 📊 Projeto CRM E-commerce — SQL + Segmentação + Análise de Clientes

Este projeto simula a atuação de um **Analista de CRM Júnior**, utilizando SQL e uma base de dados fictícia para:

- identificar usuários inativos
- analisar comportamento de compra
- descobrir clientes de alto valor (VIPs)
- gerar insights acionáveis para campanhas de CRM
- criar estratégias de reativação e retenção

Os dados incluem:
- `usuarios.csv` → atributos básicos dos clientes
- `compras_teste.csv` → histórico simplificado de compras

---

# 🧠 Objetivos do Projeto
- Criar segmentações (inativos, VIPs, ticket alto, churn)
- Analisar compras por usuário
- Identificar os **Top 3 clientes de maior valor**
- Calcular participação na receita
- Preparar ações de CRM baseadas nos insights
- Criar material para portfólio e currículo

---




# 🛠 SQL PRINCIPAL — Top 3 Clientes que Mais Gastaram

```sql
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
