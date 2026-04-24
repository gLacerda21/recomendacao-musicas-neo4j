// Recomendar músicas ainda não curtidas por Gabriel
MATCH (u:Usuario {nome:'Gabriel'})
MATCH (a:Artista {nome:'Linkin Park'})-[:CRIOU]->(m:Musica)
WHERE NOT (u)-[:CURTIU]->(m)
RETURN m.nome AS recomendacao
LIMIT 5;

// Criar usuários
CREATE (:Usuario {id:1,nome:'Gabriel'});
CREATE (:Usuario {id:2,nome:'Ana'});
CREATE (:Usuario {id:3,nome:'Pedro'});

// Criar artista
CREATE (:Artista {nome:'Linkin Park'});

// Criar gênero
CREATE (:Genero {nome:'Rock'});

// Criar músicas
CREATE (:Musica {nome:'Numb'});
CREATE (:Musica {nome:'In The End'});
CREATE (:Musica {nome:'Crawling'});
CREATE (:Musica {nome:'Faint'});
CREATE (:Musica {nome:'Papercut'});

// Relacionamentos
MATCH (a:Artista {nome:'Linkin Park'}),(m:Musica {nome:'Numb'})
CREATE (a)-[:CRIOU]->(m);

MATCH (a:Artista {nome:'Linkin Park'}),(m:Musica {nome:'In The End'})
CREATE (a)-[:CRIOU]->(m);

MATCH (a:Artista {nome:'Linkin Park'}),(m:Musica {nome:'Crawling'})
CREATE (a)-[:CRIOU]->(m);

MATCH (a:Artista {nome:'Linkin Park'}),(m:Musica {nome:'Faint'})
CREATE (a)-[:CRIOU]->(m);

MATCH (a:Artista {nome:'Linkin Park'}),(m:Musica {nome:'Papercut'})
CREATE (a)-[:CRIOU]->(m);

MATCH (m:Musica),(g:Genero {nome:'Rock'})
CREATE (m)-[:PERTENCE_A]->(g);

MATCH (u:Usuario {nome:'Gabriel'}),(m:Musica {nome:'Numb'})
CREATE (u)-[:CURTIU]->(m);

MATCH (u:Usuario {nome:'Gabriel'}),(m:Musica {nome:'In The End'})
CREATE (u)-[:CURTIU]->(m);

// Query de recomendação
MATCH (u:Usuario {nome:'Gabriel'})
MATCH (a:Artista {nome:'Linkin Park'})-[:CRIOU]->(m:Musica)
WHERE NOT (u)-[:CURTIU]->(m)
RETURN m.nome AS recomendacao
LIMIT 5;
