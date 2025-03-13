-- Criação do banco de dados
CREATE DATABASE Clinica;
 
 
-- Criação das tabelas
CREATE TABLE Crianca (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Peso DECIMAL(5,2) NOT NULL,
    Altura DECIMAL(4,2) NOT NULL,
    DataNascimento DATE NOT NULL
);
 
CREATE TABLE Mae (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE,
    Endereco VARCHAR(255) NOT NULL,
    Telefone VARCHAR(20) NOT NULL
);
 
CREATE TABLE Nascimento (
    ID INT PRIMARY KEY,
    Medico INT NOT NULL,
    IdCrianca INT NOT NULL ,
    IdMae INT NOT NULL
);
 
CREATE TABLE Medico (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Especialidade VARCHAR(100) NOT NULL,
    CRM VARCHAR(20) NOT NULL
);
 
-- Inserção dos dados dos médicos
INSERT INTO Medico (ID, Nome, Especialidade, CRM) VALUES (11245, "Juliana Alves Albuquerque", "Obstretícia", "123584");
INSERT INTO Medico (ID, Nome, Especialidade, CRM) VALUES (11246, "Pedro da Silva Santos", "Nutrologia Pediátrica", "658985");
INSERT INTO Medico (ID, Nome, Especialidade, CRM) VALUES (11546, "Vinicius Lima de Oliveira", "Neonatologia", "458755");
INSERT INTO Medico (ID, Nome, Especialidade, CRM) VALUES (11468, "Bruna Paes Chavez", "Obstretícia", "246585");
 
-- Apagar o registro da especialidade Neonatologia
DELETE FROM Medico WHERE Especialidade = 'Neonatologia';
 
-- Apagar todos os dados
DELETE FROM Nascimento;
DELETE FROM Crianca;
DELETE FROM Mae;
DELETE FROM Medico;
 
-- Apagar dados de uma em uma tabela
 DROP TABLE Nascimento;
 DROP TABLE Crianca;
 DROP TABLE Mae;
 DROP TABLE Medico;
 
-- Apagar o banco de dados
DROP DATABASE Clinica;