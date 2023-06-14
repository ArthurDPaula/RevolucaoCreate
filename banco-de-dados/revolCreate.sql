CREATE DATABASE RevolucaoCreate;
USE RevolucaoCreate;
CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    senha VARCHAR(45) NOT NULL
    );
CREATE TABLE geradores (
	idGeradores INT PRIMARY KEY AUTO_INCREMENT,
    qtdeVelas INT NOT NULL,
    energiaGerada INT,
    velocRPM INT,
    fkUsuario INT, FOREIGN KEY(fkUsuario) REFERENCES usuario(idUsuario)
	);