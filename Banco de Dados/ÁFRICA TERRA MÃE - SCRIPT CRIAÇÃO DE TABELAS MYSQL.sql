-- PAULO CESAR HERMANO PELICER - R.A. 01251081 - 1 ADS A - SALA 06A

-- PROJETO INDIVIDUAL PESQUISA E INOVAÇÃO

-- ÁFRICA TERRA MÃE

create database africa;

use africa;

create table usuarios (
    idusuario int primary key auto_increment,
    nome varchar(100) not null,
    email varchar(100) unique not null,
    cpf char(11) not null,
    senha varchar(100) not null,
    datacadastro timestamp default current_timestamp
);

create table quiz (
    idquiz int primary key auto_increment,
    pergunta text not null,
    opcao_a varchar(100) not null,
    opcao_b varchar(100) not null,
    opcao_c VARCHAR(100) not null,
    resposta_correta char(1) not null
);

CREATE TABLE respostas (
    idresposta int primary key auto_increment,
    fkusuario_id int not null,
    fkquiz_id int not null,
    resposta_usuario char(1) not null,
    pontuacao int not null,
    data_resposta timestamp default current_timestamp,
    foreign key (fkusuario_id) references usuarios(idusuario),
    foreign key (fkquiz_id) references quiz(idquiz)
);
