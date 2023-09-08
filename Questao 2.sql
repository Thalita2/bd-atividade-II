-- CRIANDO BANCO DE DADOS
CREATE DATABASE GerenciamentoBlog;

-- USANDO BANCO DE DADOS
USE GerenciamentoBlog;

-- APAGAR BANCO DE DADOS
DROP DATABASE GerenciamentoBlog;

-- CRIANDO TABELA ARTIGOS
CREATE TABLE Artigos(
ArtigosID INT AUTO_INCREMENT PRIMARY KEY,
Titulo VARCHAR(255) NOT NULL,
Conteudo VARCHAR(255) NOT NULL,
DataPublicacao DATE NOT NULL
);

-- CRIANDO TABELA COMENTÁRIOS
CREATE TABLE Comentarios(
ComentarioID INT AUTO_INCREMENT PRIMARY KEY,
ArtigoID INT,
FOREIGN KEY (ArtigoID) REFERENCES Artigos(ArtigosId),
Autor VARCHAR(255) NOT NULL,
Texto TEXT,
DataComentario Date NOT NULL
);

-- INSERINDO DADOS NA TABELA ARTIGOS
INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) VALUES ('Romeu e Julieta', 'Romance', '2017-08-21');
INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) VALUES ('A Última Casa', 'Suspense', '2018-03-14');
INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) VALUES ('A Culpa das Estrelas', 'Drama', '2019-05-16');
INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) VALUES ('Os Dois Irmãos', 'Terror', '2020-07-30');
INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) VALUES ('Diário de Um Banana', 'Comédia', '2021-06-28');

-- INSERINDO DADOS NA TABELA ARTIGOS
INSERT INTO Comentarios (ArtigoID, Autor, Texto, DataComentario) VALUES (2, 'Rafael Rebouças', 'Suspense do início ao fim do livro', '2020-05-16');
INSERT INTO Comentarios (ArtigoID, Autor, Texto, DataComentario) VALUES (5, 'Alice Boaventura', 'Achei muito engraçado o livro', '2018-07-22');
INSERT INTO Comentarios (ArtigoID, Autor, Texto, DataComentario) VALUES (3, 'Roger Figueiras', 'Amei muito o livro', '2017-07-30');
INSERT INTO Comentarios (ArtigoID, Autor, Texto, DataComentario) VALUES (4, 'Jean Bastos', 'Livro muito aterrorizante', '2022-08-28');
INSERT INTO Comentarios (ArtigoID, Autor, Texto, DataComentario) VALUES (1, 'Thalita Rebouças', 'Me apaixonei pelo livro', '2021-09-21');

-- VISUALIZAR DADOS DAS TABELAS CRIADAS
SELECT * FROM Artigos;
SELECT * FROM Comentarios;