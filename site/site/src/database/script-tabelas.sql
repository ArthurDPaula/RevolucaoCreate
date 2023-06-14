-- Active: 1686746411082@@127.0.0.1@3306@revolCreate
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
);

SELECT rpm from geradores;
INSERT INTO geradores VALUES
(NULL, 8, 512, 1, 1);
        SELECT 
        g.idGerador,
        g.qtdeVelas,
        g.energia,
        g.rpm,
        g.fkUser,
        u.idUser,
        u.nome,
        u.email,
        u.senha
        FROM geradores g
            INNER JOIN usuario u
                ON g.fkUser = u.idUser;