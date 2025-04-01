SELECT c.name AS nome_musica,
REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
    c.name, 'Amar', 'Code Review'),"SUPERSTAR","SUPERDEV"
    ),"Bard","QA"),"SOUL","CODE"),"Pais","Pull Requests") AS novo_nome
FROM SpotifyClone.cantion AS c
WHERE name LIKE "%Amar%" OR name LIKE "%SUPERSTAR%"
OR name LIKE "%Bard%" OR name LIKE "%SOUL%" OR name LIKE "%Pais%"
ORDER BY name DESC