DROP TABLE CarteiraMotorista

CREATE TABLE CarteiraMotorista (
	id INT NOT NULL,
	nome VARCHAR(255) NOT NULL,
	idade INT CHECK (idade >= 18)
);

INSERT INTO CarteiraMotorista (idade)
VALUES (19)