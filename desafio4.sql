CREATE VIEW top_3_artistas AS
SELECT
	A.name AS `artista`,
    COUNT(F.user_id) AS `seguidores`
FROM
	SpotifyClone.following F
    JOIN SpotifyClone.artists A
    ON F.artist_id = A.id
    GROUP BY A.name
    ORDER BY `seguidores` DESC, `artista`
    LIMIT 3;