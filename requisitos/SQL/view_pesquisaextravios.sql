CREATE VIEW `view_pesquisaextravios` AS
SELECT 
        tbextravios.COD_EXTRAVIO AS COD_EXTRAVIO,
		tbextravios.COD_AGENTE AS COD_AGENTE,
        tbagentes.nom_fantasia AS NOM_AGENTE, 
        tbextravios.COD_ENTREGADOR AS COD_ENTREGADOR,
        tbcodigosentregadores.NOM_FANTASIA AS NOM_ENTREGADOR, 
        tbextravios.DAT_EXTRAVIO AS DAT_EXTRAVIO,
        tbextravios.DES_EXTRAVIO AS DES_EXTRAVIO,
        tbextravios.NUM_NOSSONUMERO AS NUM_NOSSONUMERO,
        tbextravios.VAL_PRODUTO AS VAL_PRODUTO,
        tbextravios.VAL_MULTA AS VAL_MULTA,
        tbextravios.VAL_VERBA AS VAL_VERBA,
        tbextravios.VAL_TOTAL AS VAL_TOTAL,
        CASE tbextravios.DOM_RESTRICAO
			WHEN "S" THEN "FECHADO"
            WHEN "N" THEN "PENDENTE"
            ELSE "NONE"
        END AS DOM_RESTRICAO,
        CASE tbextravios.COD_TIPO
			WHEN 0 THEN "EXTRAVIO"
            WHEN 1 THEN "SINISTRO"
            WHEN 2 THEN "MULTA"
            ELSE "NONE"
        END  AS COD_TIPO,        
        tbextravios.DES_OBSERVACOES AS DES_OBSERVACOES,
        -- tbextravios.VAL_PERCENTUAL_PAGO AS VAL_PERCENTUAL_PAGO,
        IF (tbextravios.VAL_PERCENTUAL_PAGO = 100, "QUITADO", tbextravios.VAL_PERCENTUAL_PAGO) VAL_PERCENTUAL_PAGO,
        tbextravios.SEQ_ACAREACAO AS SEQ_ACAREACAO,
        tbextravios.NUM_EXTRATO AS NUM_EXTRATO, 
        expressas_controle_awb.des_produto AS des_produto
    FROM
        tbextravios
	LEFT JOIN tbagentes ON tbagentes.cod_agente = tbextravios.cod_agente
    LEFT JOIN tbcodigosentregadores ON tbcodigosentregadores.COD_ENTREGADOR = tbextravios.COD_ENTREGADOR
    LEFT JOIN expressas_controle_awb ON expressas_controle_awb.num_remessa = tbextravios.NUM_NOSSONUMERO