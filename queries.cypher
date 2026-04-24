// Recomendar músicas ainda não curtidas por Gabriel
MATCH (u:Usuario {nome:'Gabriel'})
MATCH (a:Artista {nome:'Linkin Park'})-[:CRIOU]->(m:Musica)
WHERE NOT (u)-[:CURTIU]->(m)
RETURN m.nome AS recomendacao
LIMIT 5;
