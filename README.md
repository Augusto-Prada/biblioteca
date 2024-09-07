## Consultas e Funcionalidades SQL
Este projeto contém uma série de consultas SQL para gerenciar e consultar um banco de dados. As consultas são usadas para interagir com tabelas de autores, livros e usuários.

## Funcionalidades
Consulta de Autores: Obtenha todos os autores cadastrados.
Consulta de Livros: Obtenha todos os livros cadastrados.
Consulta de Usuários: Obtenha todos os usuários cadastrados.
Consultas com Condições: Busque livros de um autor específico.
Inserção de Dados: Adicione novos autores ao banco de dados.
Atualização de Dados: Atualize o nome de um autor existente.
Exclusão de Dados: Deletar um autor do banco de dados.
Consulta com JOIN: Liste livros e seus autores.
Pré-requisitos
Certifique-se de ter um banco de dados SQL configurado e acessível. As consultas podem ser executadas em qualquer ferramenta de gerenciamento de banco de dados que suporte SQL.

## Consultas SQL

## 1. Consultar todos os autores
sql
Copiar código
SELECT * FROM autor;

## 2. Consultar todos os livros
sql
Copiar código
SELECT * FROM livro;

## 3. Consultar todos os usuários
sql
Copiar código
SELECT * FROM usuarios;

## 4. Consultar livros de um autor específico
sql
Copiar código
SELECT * FROM livro WHERE id_autor = 1;

## 5. Inserir um novo autor
sql
Copiar código
INSERT INTO autor (nome_autor, imagem, estado) VALUES ('Novo Autor', 'nova_imagem.png', 1);

## 6. Atualizar o nome de um autor
sql
Copiar código
UPDATE autor SET nome_autor = 'Autor Atualizado' WHERE id = 1;

## 7. Deletar um autor
sql
Copiar código
DELETE FROM autor WHERE id = 3;

## 8. Consultar livros e seus autores
sql
Copiar código
SELECT livro.titulo, autor.nome_autor
FROM livro
INNER JOIN autor ON livro.id_autor = autor.id;
Uso
Para executar as consultas SQL, conecte-se ao seu banco de dados e copie os comandos SQL no seu cliente de banco de dados.

## Contribuição
Contribuições são bem-vindas! Para contribuir com este projeto, siga os passos abaixo:

Faça um fork do repositório.
Crie uma branch para sua modificação.
Faça as alterações necessárias e envie um pull request.

## Licença
Este projeto está licenciado sob a MIT License.

## Contato
Para mais informações, entre em contato com Augusto Prada
