CREATE TABLE aula (
	aulaId INT PRIMARY KEY,
	nome VARCHAR(200)
)

INSERT INTO aula(aulaId, nome)
VALUES(1,'aula 1')

INSERT INTO aula(aulaId, nome)
VALUES
(2,'Aula 2'),
(3,'Aula 3'),
(4,'Aula 4');

SELECT * FROM aula


SELECT * INTO aulasRecuperacao 
FROM aula

SELECT * FROM aulasRecuperacao