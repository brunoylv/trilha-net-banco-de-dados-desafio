-- 1 
SELECT 

Nome,
Ano

FROM Filmes;

-- 2

SELECT

Nome,
Ano

FROM Filmes

ORDER BY Ano;

--3

SELECT

Nome,
Ano,
Duracao

FROM Filmes

WHERE Ano = 1985;

-- 4

SELECT *

FROM Filmes

WHERE Ano = 1997;

-- 5

SELECT *

FROM Filmes

WHERE Ano > 2000;

-- 6

SELECT *

From Filmes

WHERE Duracao > 100 AND Duracao < 150

ORDER BY Duracao;

-- 7

SELECT 

Ano, 
COUNT(*) AS Quantidade


FROM Filmes

GROUP BY Ano

ORDER BY Quantidade DESC;

-- 8

SELECT *

From Atores

WHERE Genero = 'M';

-- 9

SELECT *

From Atores

WHERE Genero = 'F'

ORDER BY PrimeiroNome;

-- 10

SELECT

Filmes.Nome,
Generos.Genero

FROM Filmes

INNER JOIN FilmesGenero ON Filmes.ID = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.ID;

-- 11

SELECT

Filmes.Nome, 
Generos.Genero

FROM Filmes

INNER JOIN FilmesGenero ON Filmes.ID = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.ID

WHERE Genero =  'Mistério';

-- 12

SELECT

Filmes.Nome,
Atores.PrimeiroNome,
Atores.UltimoNome,
ElencoFilme.Papel

FROM Filmes

INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;