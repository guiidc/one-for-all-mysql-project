USE SpotifyClone;
DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(45))
BEGIN
SELECT 
	AR.name AS `artista`,
    AL.title AS `album`
FROM 
	SpotifyClone.albuns AL
    JOIN SpotifyClone.artists AR
    ON AL.artist_id = AR.id
    WHERE AR.name = artista;
END $$
DELIMITER ;