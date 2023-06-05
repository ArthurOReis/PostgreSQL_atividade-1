CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT
);

CREATE TABLE Pedidos (
    id INT PRIMARY KEY,
    clientes_id INT,
    pedido VARCHAR(100),
    FOREIGN KEY (clientes_id) REFERENCES Clientes(id)
);

INSERT INTO Clientes (id, nome, idade)
VALUES (1, 'Arthur', 17),
       (2, 'Ana', 29),
       (3, 'Heitor', 15),
       (4, 'Nicolas', 18),
       (5, 'Fran', 16);

INSERT INTO Pedidos (id, clientes_id, pedido)
VALUES (1, 1, 'Porção de fritas'),
       (2, 2, 'Crossaint de chocolate'),
       (3, 3, 'Misto quente sem presunto'),
       (4, 4, 'Espaguete com almôndegas'),
       (5, 5, 'Maçã');

-- Atributos numéricos maiores que 20
SELECT * FROM Clientes WHERE idade > 20;

-- Atributos numéricos iguais a 15
SELECT * FROM Clientes WHERE idade = 15;

-- Ordem alfabética e números diferentes de 16
SELECT * FROM Clientes WHERE idade <> 16 ORDER BY nome ASC;

-- Ordem decrescente de números
SELECT * FROM Clientes ORDER BY idade DESC;
