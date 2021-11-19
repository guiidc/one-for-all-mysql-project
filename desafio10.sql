USE SpotifyClone;

DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(id INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE songAmount INT;
SELECT 
    COUNT(H.song_id)
FROM
    historic H
    JOIN users U
    ON H.user_id = U.id
    WHERE U.id = id INTO songAmount;

RETURN songAmount;
END
$$
DELIMITER ;