CREATE VIEW top_2_hits_do_momento AS
SELECT 
    S.title AS `cancao`,
    COUNT(H.song_id) AS `reproducoes`
FROM
    SpotifyClone.historic H
    JOIN SpotifyClone.songs S
    ON H.song_id = S.id
    GROUP BY `cancao`
    ORDER BY `reproducoes` DESC, `cancao`
    LIMIT 2;