CREATE VIEW perfil_artistas AS
SELECT 
	AR.name AS `artista`,
	AL.title AS `album`,
    COUNT(F.user_id) AS `seguidores`
  
FROM
    SpotifyClone.albuns AL
    JOIN SpotifyClone.artists AR
    ON AL.artist_id = AR.id
    JOIN SpotifyClone.following F
    ON F.artist_id = AR.id
    GROUP BY AL.title, AR.name
    ORDER BY `seguidores` DESC, `artista`;