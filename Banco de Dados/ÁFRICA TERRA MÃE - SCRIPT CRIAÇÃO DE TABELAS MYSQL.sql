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

create table quiz (
    idquiz int primary key auto_increment,
    quantidade_acerto int not null,
    quantidade_erro int not null,
    porcentagem_acerto int not null,
    data_quiz timestamp default current_timestamp,
    fkidusuario int not null,
    foreign key (fkidusuario) references usuarios(idusuario)
);

select * from usuarios;
select * from quiz;
show tables;

select idquiz as 'Identificador do Quiz',
quantidade_acerto as 'Quantidade de acertos',
quantidade_erro as 'Quantidade de erros',
porcentagem_acerto as 'Percentual de acertos',
data_quiz as 'Data do quiz'
from quiz where fkidusuario = 1
order by data_quiz ASC;

select count(*) as 'Tentativas' from quiz where fkidusuario = 1;








