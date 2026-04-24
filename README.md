# Recomendação de Músicas com Neo4j

## Descrição

Este projeto foi desenvolvido como parte do desafio **Criando um Algoritmo de Recomendação de Músicas Com Base Em Grafos**.

O objetivo é utilizar o banco de dados em grafos Neo4j para representar usuários, músicas, artista e gênero musical, criando conexões que permitem gerar recomendações de músicas.

## Tema escolhido

O projeto foi baseado em músicas da banda **Linkin Park**.

## Estrutura do grafo

### Nós

- Usuario
- Musica
- Artista
- Genero

### Relacionamentos

- Usuario CURTIU Musica
- Artista CRIOU Musica
- Musica PERTENCE_A Genero

## Como funciona a recomendação

O sistema identifica as músicas que o usuário já curtiu e recomenda outras músicas do mesmo artista que ainda não foram curtidas.

Exemplo:

```cypher
MATCH (u:Usuario {nome:'Gabriel'})
MATCH (a:Artista {nome:'Linkin Park'})-[:CRIOU]->(m:Musica)
WHERE NOT (u)-[:CURTIU]->(m)
RETURN m.nome AS recomendacao
LIMIT 5;
