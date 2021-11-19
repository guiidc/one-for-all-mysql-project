CREATE VIEW cancoes_premium AS
SELECT
	S.title AS `nome`,
    COUNT(H.song_id) AS `reproducoes`
FROM
	SpotifyClone.users U
    JOIN SpotifyClone.plans P
    ON U.plan_id = P.id
    JOIN SpotifyClone.historic H
    ON U.id = H.user_id
    JOIN SpotifyClone.songs S
    ON S.id = H.song_id
    WHERE P.id IN (2, 3)
    GROUP BY `nome`
    ORDER BY `nome`;