SELECT financeiro_tabela_regiao.cep_inicial as 'cep inicial', financeiro_tabela_regiao.cep_final as 'cep final',
financeiro_tabela_custo_tfo.qtd_peso_inicial as 'peso inicial', financeiro_tabela_custo_tfo.qtd_peso_final as 'peso final',
if (financeiro_tabela_regiao.des_regiao = 'CAPITAL',format(financeiro_tabela_custo_tfo.val_custo,2,'de_DE'),0) as 'valor capital', 
if (financeiro_tabela_regiao.des_regiao = 'METROPOLITANA',format(financeiro_tabela_custo_tfo.val_custo,2,'de_DE'),0) as 'valor metropolitano', 
if (financeiro_tabela_regiao.des_regiao = 'INTERIOR',format(financeiro_tabela_custo_tfo.val_custo,2,'de_DE'),0) as 'valor interior',
if (financeiro_tabela_custo_tfo.val_excedente > 0,'SIM','NAO') as 'excedente', 
format(financeiro_tabela_custo_tfo.val_excedente,2,'de_DE') as 'excedente capital', 
format(financeiro_tabela_custo_tfo.val_excedente,2,'de_DE') as 'excedente metropolitano', 
format(financeiro_tabela_custo_tfo.val_excedente,2,'de_DE') as 'excedente interior' 
FROM financeiro_tabela_regiao
inner join financeiro_tabela_custo_tfo on financeiro_tabela_custo_tfo.cod_classificacao = financeiro_tabela_regiao.cod_classificacao  
where cod_perfil = 1 
order by financeiro_tabela_regiao.cep_inicial, financeiro_tabela_regiao.cep_final, financeiro_tabela_custo_tfo.qtd_peso_inicial, financeiro_tabela_custo_tfo.qtd_peso_final;