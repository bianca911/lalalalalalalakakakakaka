-- 1. Consulta todos os livros disponíveis
SELECT l.titulo, a.nome AS autor, l.genero
FROM Livros l
JOIN Autores a ON l.autor_id = a.autor_id
WHERE l.disponivel = TRUE;

-- 2. Consulta livros emprestados atualmente (não devolvidos)
SELECT l.titulo, e.nome_cliente, e.data_emprestimo
FROM Emprestimos e
JOIN Livros l ON e.livro_id = l.livro_id
WHERE e.data_devolucao IS NULL;

-- 3. Consulta autores e a quantidade de livros que cada um tem na biblioteca
SELECT a.nome, COUNT(l.livro_id) AS total_livros
FROM Autores a
LEFT JOIN Livros l ON a.autor_id = l.autor_id
GROUP BY a.nome
ORDER BY total_livros DESC;

-- 4. Consulta livros publicados após 1950
SELECT titulo, ano_publicacao
FROM Livros
WHERE ano_publicacao > 1950
ORDER BY ano_publicacao;

-- 5. Consulta empréstimos com devolução atrasada (considerando 15 dias de prazo)
SELECT l.titulo, e.nome_cliente, e.data_emprestimo, 
       DATEDIFF(CURRENT_DATE, e.data_emprestimo) AS dias_emprestado
FROM Emprestimos e
JOIN Livros l ON e.livro_id = l.livro_id
WHERE e.data_devolucao IS NULL
AND DATEDIFF(CURRENT_DATE, e.data_emprestimo) > 15;