-- CRIANDO BANCO DE DADOS
CREATE DATABASE GerenciamentoPedidos;

-- USANDO BANCO DE DADOS
USE GerenciamentoPedidos;

-- APAGAR BANCO DE DADOS
DROP DATABASE GerenciamentoPedidos;

-- CRANDO TABELA 
CREATE TABLE Clientes(
ClienteID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Email VARCHAR(255) NOT NULL UNIQUE,
Telefone VARCHAR(20) NOT NULL UNIQUE
);

-- CRANDO TABELA 
CREATE TABLE Pedidos(
PedidoID INT AUTO_INCREMENT PRIMARY KEY,
ClienteID INT,
FOREIGN KEY (ClienteID) REFERENCES Clientes (ClienteId),
DataPedido DATE NOT NULL,
ValorTotal VARCHAR(255) NOT NULL
);

-- INSERINDO DADOS NA TABELA CLIENTES
INSERT INTO Clientes (Nome, Email, Telefone) VALUES ('Thalita', 'thalita@gmail.com', 71985013844);
INSERT INTO Clientes (Nome, Email, Telefone) VALUES ('Paulo', 'paulo@gmail.com', 71988895734);
INSERT INTO Clientes (Nome, Email, Telefone) VALUES ('Joana', 'joana@gmail.com', 71987758626);
INSERT INTO Clientes (Nome, Email, Telefone) VALUES ('Marcelo', 'marcelo@gmail.com', 71991986735);
INSERT INTO Clientes (Nome, Email, Telefone) VALUES ('Rodrigo', 'rodrigo@gmail.com', 71985129672);

-- INSERINDO DADOS NA TABELA PEDIDOS
INSERT INTO Pedidos (DataPedido, ValorTotal, ClienteID) VALUES ('2023-08-23', 98.44, 1);
INSERT INTO Pedidos (DataPedido, ValorTotal, ClienteID) VALUES ('2023-10-13', 100.00, 2);
INSERT INTO Pedidos (DataPedido, ValorTotal, ClienteID) VALUES ('2023-08-20', 90.45, 3);
INSERT INTO Pedidos (DataPedido, ValorTotal, ClienteID) VALUES ('2023-07-15', 50.00, 4);
INSERT INTO Pedidos (DataPedido, ValorTotal, ClienteID) VALUES ('2023-06-12', 120.00, 5);

-- VISUALIZAR DADOS DAS TABELAS CRIADAS
SELECT * FROM Clientes;
SELECT * FROM Pedidos;