CREATE TABLE YoutubeLite (
	id INT PRIMARY KEY,
	nome VARCHAR(150) NOT NULL UNIQUE,
	categoria VARCHAR(200) NOT NULL,
	dataCriacao DATETIME NOT NULL
)

SELECT * FROM YoutubeLite

-- ADD COLUNA
ALTER TABLE YoutubeLite
ADD ativo BIT

-- ALTERAR LIMITE COLUNA
ALTER TABLE YoutubeLite
ALTER COLUMN categoria VARCHAR(300) NOT NULL

-- ALTERAR NOME COLUNA VIA PROCEDURE
-- EXEC sp_rename 'nomeTabela.nomeColunaAtual', 'nomeColunaNova', 'COLUMN'
EXEC sp_rename 'YoutubeLite.nome', 'nomeCanal', 'COLUMN'

-- ALTERAR NOME TABELA VIA PROCEDURE
-- EXEC sp_rename 'nomeTabelaAtual', 'nomeTabelaNovo'
EXEC sp_rename 'YoutubeLite', 'YoutubeLiteApp'

SELECT * FROM YoutubeLiteApp

-- DESAFIO
CREATE TABLE desafio (
	desafioId INT PRIMARY KEY,
	nome NVARCHAR(100) NOT NULL UNIQUE,
	tipo BIT NOT NULL,
	dataDesafio DATETIME
)

ALTER TABLE desafio
ALTER COLUMN dataDesafio DATETIME NOT NULL

SELECT * FROM desafioAlterTable

EXEC sp_rename 'desafio.tipo', 'tipoDesafio', 'COLUMN'

EXEC sp_rename 'desafio', 'desafioAlterTable'