-- PAULO CESAR HERMANO PELICER - R.A. 01251081 - 1 ADS A - SALA 06A

-- PROJETO INDIVIDUAL PESQUISA E INOVAÇÃO

-- ÁFRICA TERRA MÃE

create database africa;

use africa;

drop database africa;

create table usuarios (
    idusuario int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(45) unique not null,
    senha varchar(45) not null,
    datacadastro timestamp default current_timestamp
);

CREATE TABLE pontuacao (
    idpontuacao int auto_increment,
    pontuacao int not null,
    data_pontuacao timestamp default current_timestamp,
    fkidusuario int not null,
    fkidpergunta int not null,
	constraint pkcomposta primary key (idpontuacao, fkidusuario, fkidpergunta),
    constraint fkusuario foreign key (fkidusuario) references usuarios(idusuario),
    constraint fkquiz foreign key (fkidpergunta) references quiz(idpergunta)
);

create table quiz (
    idpergunta int primary key auto_increment,
    pergunta text(200) not null,
    opcao_a char(1) not null,
    opcao_b char(1) not null,
    opcao_c CHAR(1) not null,
    resposta_correta char(1) not null
);

select * from usuarios;
select * from pontuacao;
select * from quiz;
