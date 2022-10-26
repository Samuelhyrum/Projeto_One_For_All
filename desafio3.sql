SELECT u.usuario AS usuario,
COUNT(h.data_reproducao) AS qt_de_musicas_ouvidas,
ROUND(SUM(c.duracao_seg)/60,2) AS total_minutos
FROM SpotifyClone.usuarios AS u
INNER JOIN 
SpotifyClone.historico AS h ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancoes AS c ON c.cancoes_id = h.cancoes_id
GROUP BY u.usuario
ORDER BY u.usuario ASC;