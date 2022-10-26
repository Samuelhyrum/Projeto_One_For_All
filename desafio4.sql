SELECT u.usuario AS usuario, 
IF(MAX(YEAR(h.data_reproducao)) <= 2020 ,'Usuário inativo' , 'Usuário ativo' )
AS status_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN 
SpotifyClone.historico AS h ON h.usuario_id = u.usuario_id
GROUP BY u.usuario_id
ORDER BY u.usuario;