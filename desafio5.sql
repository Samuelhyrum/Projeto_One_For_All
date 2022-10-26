SELECT c.cancoes AS cancao, 
COUNT(h.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN 
SpotifyClone.historico AS h ON h.cancoes_id = c.cancoes_id
GROUP BY c.cancoes
ORDER BY reproducoes DESC, cancao
LIMIT 2;