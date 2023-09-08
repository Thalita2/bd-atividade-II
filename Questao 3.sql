-- CRIANDO BANCO DE DADOS
CREATE DATABASE GerenciamentoDepart;

-- USANDO BANCO DE DADOS
USE GerenciamentoDepart;

-- APAGAR BANCO DE DADOS
DROP DATABASE GerenciamentoDepart;

-- CRANDO TABELA 
CREATE TABLE Departamentos(
DepartamentosID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL
);

-- CRANDO TABELA 
CREATE TABLE Funcionarios(
FuncionarioID INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Cargo VARCHAR(255) NOT NULL,
Salario VARCHAR(255) NOT NULL,
DepartamentoID INT,
FOREIGN KEY (DepartamentoID) REFERENCES Departamentos (DepartamentosId)
);


-- INSERINDO DADOS NA TABELA
INSERT INTO Departamentos (Nome) VALUES ('RH');
INSERT INTO Departamentos (Nome) VALUES ('ADMINISTRATIVO');
INSERT INTO Departamentos (Nome) VALUES ('SUPORTE TI');
INSERT INTO Departamentos (Nome) VALUES ('JURÍDICO');
INSERT INTO Departamentos (Nome) VALUES ('FINANCEIRO');

-- INSERINDO DADOS NA TABELA 
INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES ('Ananda', 'Gerente', 1200.00, 1);
INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES ('Júlia', 'Auxiliar Administrativo', 1300.00, 2);
INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES ('Carlos', 'Desenvolvedor de Software', 1400.00, 3);
INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES ('Antônio', 'Promotor', 1500.00, 4);
INSERT INTO Funcionarios (Nome, Cargo, Salario, DepartamentoID) VALUES ('Cristina', 'Contador', 1400.00, 5);

-- VISUALIZAR DADOS DAS TABELAS CRIADAS
SELECT * FROM Departamentos;
SELECT * FROM Funcionarios;