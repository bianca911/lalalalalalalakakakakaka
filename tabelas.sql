-- Criação do banco de dados
CREATE DATABASE Biblioteca;
USE Biblioteca;

-- Tabela Autores
CREATE TABLE Autores (
    autor_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50),
    data_nascimento DATE
);

-- Tabela Livros
CREATE TABLE Livros (
    livro_id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(200) NOT NULL,
    autor_id INT,
    ano_publicacao INT,
    genero VARCHAR(50),
    disponivel BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (autor_id) REFERENCES Autores(autor_id)
);

-- Tabela Emprestimos
CREATE TABLE Emprestimos (
    emprestimo_id INT PRIMARY KEY AUTO_INCREMENT,
    livro_id INT,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    nome_cliente VARCHAR(100) NOT NULL,
    FOREIGN KEY (livro_id) REFERENCES Livros(livro_id)
);