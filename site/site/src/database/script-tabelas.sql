CREATE DATABASE revolCreate;

USE revolCreate;

CREATE TABLE usuario (
	idUser INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);
CREATE TABLE geradores (
	idGerador INT PRIMARY KEY AUTO_INCREMENT,
	qtdeVelas INT,
	energia INT,
	rpm INT,
	fkUser INT,
	FOREIGN KEY (fkUser) REFERENCES usuario(idUser)
)