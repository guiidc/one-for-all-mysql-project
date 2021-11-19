CREATE VIEW historico_reproducao_usuarios AS
SELECT 
    U.name AS `usuario`,
    S.title AS `nome`
FROM
    SpotifyClone.historic H
    JOIN SpotifyClone.users U
    ON  H.user_id = U.id
    JOIN SpotifyClone.songs S
    ON H.song_id = S.id
    ORDER BY `usuario`, `nome`;