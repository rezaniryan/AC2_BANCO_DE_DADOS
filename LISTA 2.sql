-- NUMER0 1
SELECT
     f.cod_filme,
    COUNT(l.cod_locacao) AS quantidade_alugados
FROM
     filme f
 JOIN
     locacao l ON f.cod_filme = l.cod_filme
 GROUP BY
    f.cod_filme
 ORDER BY
     quantidade_alugados DESC;
    
-- NUMERO 2
 SELECT
    f.filme,
    l.data_devolucao
 FROM
    filme f
 JOIN
    locacao l ON f.cod_filme = l.cod_filme
 JOIN
    cliente c ON l.cod_cliente = c.cod_cliente
 JOIN
    categoria cat ON f.cod_categoria = cat.cod_categoria
 WHERE
    cat.nome_categoria = 'Ação'
     AND f.diretor = 'Richard Donner'
     AND c.nome = 'Abimael Silva';

-- NUMERO 3
 SELECT
    f.filme,
     f.valor_locacao,
     (f.valor_locacao * 0.10) AS desconto,
    (f.valor_locacao - (f.valor_locacao * 0.10)) AS valor_final
 FROM
    filme f;

-- NUMERO 4
 SELECT DISTINCT
    f.filme
 FROM
    filme f
 JOIN
    locacao l ON f.cod_filme = l.cod_filme
 JOIN
    cliente c ON l.cod_cliente = c.cod_cliente
 WHERE
    c.cidade = 'Votorantim';

-- NUMERO 5
 SELECT
    f.filme,
    l.data_retirada
 FROM
    filme f
 JOIN
    locacao l ON f.cod_filme = l.cod_filme
 ORDER BY
    l.data_retirada DESC
 LIMIT 1;

-- NUMERO 6
 SELECT
    SUM(f.valor_locacao) AS lucro_total
 FROM
    filme f
 JOIN
    locacao l ON f.cod_filme = l.cod_filme
 WHERE
    f.filme = 'A vida é bela';

-- NUMERO 7
 SELECT
    f.diretor,
     COUNT(l.cod_locacao) AS quantidade_saidas
 FROM
    filme f
 JOIN
    locacao l ON f.cod_filme = l.cod_filme
 GROUP BY
    f.diretor
 ORDER BY
    quantidade_saidas DESC;

-- NUMERO 8
 SELECT DISTINCT
    cat.nome_categoria
 FROM
    categoria cat
 JOIN
    filme f ON cat.cod_categoria = f.cod_categoria
 JOIN
    locacao l ON f.cod_filme = l.cod_filme
 JOIN
    cliente c ON l.cod_cliente = c.cod_cliente
 WHERE
    c.nome = 'Maria Chiquinha';

-- NUMERO 9
 SELECT
    c.nome,
    c.telefone
 FROM
    cliente c
 JOIN
    locacao l ON c.cod_cliente = l.cod_cliente
 JOIN
    filme f ON l.cod_filme = f.cod_filme
 WHERE
    f.filme = 'Constantine';

-- NUMERO 10
SELECT
    cat.nome_categoria
 FROM
    categoria cat
 LEFT JOIN
    filme f ON cat.cod_categoria = f.cod_categoria
 WHERE
    f.cod_filme IS NULL;
