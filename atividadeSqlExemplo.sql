CREATE TABLE Restaurante(
	CNPJ VARCHAR(20) NOT NULL,
  	nome VARCHAR(50) NOT NULL,
  	CEP VARCHAR(9) NOT NULL,
  	numero INT NOT NULL,
  	cardapio text NOT NULL,
  	PRIMARY KEY(CNPJ)
);

CREATE TABLE Escola(
	CNPJ VARCHAR(20) NOT NULL,
  	nome VARCHAR(50) NOT NULL,
  	CEP VARCHAR(9) NOT NULL,
  	numero INT NOT NULL,
  	CNPJ_restaurante VARCHAR(20) NOT NULL,
  	PRIMARY KEY(CNPJ),
  	FOREIGN KEY (CNPJ_restaurante) REFERENCES Restaurante(CNPJ)
);

INSERT INTO Restaurante VALUES('2876429', 'Alberto', '567321', 25, 'Arroz, Feijão, Macarrão'),
('1478121', 'Empaditos', '4527384', 43, 'Empadinha'), ('619782', 'Coxitos', '9991734', 37, 'Coxinha'),
('23572390', 'Salsichitos', '277716', 93, 'Salsicha'), ('672534', 'Zé do Caldo de Canda', '631773', 73, 'Caldo de Cana'),
('327463', 'Frangote', '643718', 98, 'Frango');

INSERT INTO escola VALUES ('346542', 'Escola S', '526478', 12, '2876429'), ('124214', 'Adalberto', '77756', 23, '1478121'),
('111232', 'Visão', '56235', 26, '619782'), ('78942', 'Promissor', '326471',25, '672534');

SELECT * from restaurante WHERE nome = 'Frangote' OR nome != 'Coxitos' ORDER BY numero ASC;
SELECT COUNT(numero) FROM restaurante;

SELECT * FROM restaurante, escola;

SELECT escola.nome, restaurante.nome FROM escola INNER JOIN restaurante on escola.cnpj_restaurante = restaurante.cnpj
SELECT escola.nome, restaurante.nome FROM escola RIGHT JOIN restaurante on escola.cnpj_restaurante = restaurante.cnpj
