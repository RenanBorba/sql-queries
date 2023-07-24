DROP TABLE CarteiraMotorista

CREATE TABLE CarteiraMotorista (
	id int NOT NULL,
	nome VARCHAR(255) NOT NULL,
	idade INT CHECK (idade >= 18),
	codigoCNH INT NOT NULL UNIQUE
);

INSERT INTO CarteiraMotorista (id, nome, idade, codigoCNH)
VALUES (1, 'renan', 19, 123456)

INSERT INTO CarteiraMotorista (id, nome, idade, codigoCNH)
VALUES (1, 'rafael', 19, 123456)

INSERT INTO CarteiraMotorista (id, nome, idade, codigoCNH)
VALUES (1, 'rafael', 19, 123457)

