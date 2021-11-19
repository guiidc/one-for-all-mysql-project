CREATE VIEW estatisticas_musicais AS
    SELECT 
        COUNT(S.title) AS `cancoes`,
        (SELECT 
                COUNT(name)
            FROM
                SpotifyClone.artists) AS `artistas`,
        (SELECT 
                COUNT(title)
            FROM
                SpotifyClone.albuns) AS `albuns`
    FROM
        songs S;
    