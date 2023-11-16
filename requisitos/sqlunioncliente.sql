SELECT cod_cliente, nom_cliente 
FROM (
      SELECT cod_cliente, nom_cliente FROM tbclientes 
      UNION ALL 
      SELECT cod_cliente, nom_fantasia as nom_cliente FROM crm_clientes
     ) res 
GROUP BY cod_cliente;