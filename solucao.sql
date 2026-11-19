SELECT nome_cliente,
       total_gasto,
       CASE
           WHEN total_gasto >= 3000 THEN 'Cliente VIP'
           WHEN total_gasto >= 1000 THEN 'Cliente Ouro'
           ELSE 'Cliente Bronze'
       END AS categoria_fidelidade
FROM CLIENTES_LOJA
ORDER BY total_gasto DESC;
