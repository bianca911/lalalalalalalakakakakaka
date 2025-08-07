-- Inserindo autores
INSERT INTO Autores (nome, nacionalidade, data_nascimento) VALUES
('Machado de Assis', 'Brasileiro', '1839-06-21'),
('Clarice Lispector', 'Brasileira', '1920-12-10'),
('J.K. Rowling', 'Britânica', '1965-07-31'),
('George Orwell', 'Britânico', '1903-06-25');

-- Inserindo livros
INSERT INTO Livros (titulo, autor_id, ano_publicacao, genero) VALUES
('Dom Casmurro', 1, 1899, 'Romance'),
('A Hora da Estrela', 2, 1977, 'Ficção'),
('Harry Potter e a Pedra Filosofal', 3, 1997, 'Fantasia'),
('1984', 4, 1949, 'Distopia'),
('Memórias Póstumas de Brás Cubas', 1, 1881, 'Romance');

-- Inserindo empréstimos
INSERT INTO Emprestimos (livro_id, data_emprestimo, data_devolucao, nome_cliente) VALUES
(1, '2023-05-10', '2023-05-25', 'João Silva'),
(3, '2023-06-15', NULL, 'Maria Oliveira'),
(4, '2023-07-01', '2023-07-20', 'Carlos Souza'),
(2, '2023-08-05', NULL, 'Ana Costa');