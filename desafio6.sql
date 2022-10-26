SELECT ROUND(MIN(p.valor_plano),2) AS faturamento_minimo, 
ROUND(MAX(p.valor_plano),2) AS faturamento_maximo,
ROUND(AVG(p.valor_plano),2) AS faturamento_medio,
ROUND(SUM(p.valor_plano),2) AS faturamento_total
FROM SpotifyClone.usuarios AS u
INNER JOIN 
SpotifyClone.plano AS p ON p.plano_id = u.plano_id;