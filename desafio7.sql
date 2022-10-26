SELECT a.nome AS artista, 
al.album AS album, 
COUNT(s.artista_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN 
SpotifyClone.albuns AS al ON al.artista_id = a.artista_id
INNER JOIN SpotifyClone.seg_artistas AS s ON s.artista_id = a.artista_id
GROUP BY al.album_id
ORDER BY seguidores DESC, artista, album;