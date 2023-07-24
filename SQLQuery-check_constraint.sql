CREATE TABLE CarteiraMotorista (
	id INT NOT NULL,
	nome VARCHAR(255) NOT NULL,
	idade INT CHECK (idade >= 18)
)

SELECT * FROM CarteiraMotorista

INSERT INTO CarteiraMotorista (id, nome, idade)
VALUES (1, 'Renan', 17)