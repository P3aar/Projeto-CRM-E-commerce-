# Projeto: CRM Multicanal — Campanha de Promoção & Reativação (E-commerce)

**Resumo:**  
Projeto prático focado em reativar usuários inativos de uma loja e-commerce usando uma régua multicanal (Email A/B -> Push -> WhatsApp). Projeto ideal para portfólio de Analista de CRM Júnior.

**Conteúdo do repositório:**
- usuarios.csv — base sintética com 500 registros
- queries.sql — queries utilizadas para segmentação
- assets/ — textos das peças (email A, email B, push, whatsapp)
- project_case.pdf — documento resumido do case (visão, jornada, resultados fictícios)
- README.md — este arquivo

**Como replicar:**
1. Abrir `usuarios.csv` em Google Sheets ou carregar em SQLite/BigQuery.
2. Rodar as queries em `queries.sql` adaptando a função de datas do seu ambiente.
3. Importar as peças em sua ferramenta de CRM (RD/Mautic/Customer.io/Salesforce).
4. Criar a jornada: Email A/B (Dia 1) -> Push (Dia 3) -> WhatsApp (Dia 5).
5. Monitorar KPIs: taxa de abertura, CTR, conversão e receita.

**KPIs de exemplo (estimativas fictícias para o portfolio):**
- Abertura email A: 30%  
- Abertura email B: 44%  
- Clique email B: 7.2%  
- Conversão jornada: 11.8%  
- Receita estimada: R$ 3.980

**Autor:** Yuri Borges — Projeto gerado em 2025
