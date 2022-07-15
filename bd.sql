/*
Instruções para inicialização do mysql via terminal (ambiente mac / linux)

% mysql -h localhost -u root -p

onde: 
mysql      -- evocamos o servidor
-h         -- dizemos que o próximo dado é referente ao host
localhost  -- informamos o o host
-u         -- dizemos que o próximo dado é referente ao usuário
root       -- informamos o usuário
-p         -- dizemos que o próximo dado é referente a senha

será solicitado a senha, daí precisa apenas digitá-la e realizar os comandos abaixo. 

*/

/*

Organização do banco de dados do sistema de classificados: 

Tabela usuários 
Tabela anúncios
Tabela categorias

*/

/* Cria a base de dados para o sistema de classificados*/
CREATE DATABASE classificados;

/* Usa o base de dados*/
USE classificados;

/* Configurando a tabela usuários*/
CREATE TABLE usuarios (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(32) NOT NULL,
    telefone VARCHAR(30)
);

/* Configurando a tabela categorias*/
CREATE TABLE categorias (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

/* Configurando a tabela anuncios*/
CREATE TABLE anuncios (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    /*
    Relacionamento: Todo anúncio possui uma categoria    
    Relacionamento: Todo anúncio deve ser feito por um usuário
    */
    id_usuario INT(11) NOT NULL,
    id_categoria INT(11) NOT NULL,
    
    /*Atributos da tabela sem relacionamento*/
    titulo VARCHAR(100),
    descricao TEXT,
    valor FLOAT,
    estado INT(11)
);