SELECT c.cancoes AS nome, 
COUNT(*) AS reproducoes
FROM cancoes AS c
INNER JOIN 
SpotifyClone.historico AS h ON c.cancoes_id = h.cancoes_id
INNER JOIN 
SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
WHERE u.plano_id IN (1,4)
GROUP BY c.cancoes_id
ORDER BY nome;