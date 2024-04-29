-- criar uma tabela de estados (id, nome)
-- 		cadastrando 3 estados

-- criar uma tabela de cidades (id, id_estado, nome)
-- 		cadastrando 3 cidades para estados diferentes
-- consultar as cidades utilizando inner join

-- Dropa a base de dados se ela existir
drop database if exists proway;

-- Cria a base de dados proway
create database proway;
use proway;

-- Cria a tabela estados
create table estados (
    id int auto_increment,
    nome varchar (35) not null,
    primary key (id)
);

-- Insere os estados
insert into estados (nome) values
    ("Santa Catarina"),
    ("Paraná"),
    ("Rio Grande do Sul");

-- Exibe os estados
select id, nome from estados;

-- Cria a tabela cidades
create table cidades (
    id int auto_increment,
    id_estado int not null,
    nome varchar (35),
    foreign key (id_estado) references estados (id),
    primary key (id)
);

-- Insere as cidades
insert into cidades (nome, id_estado) values
    ("Blumenau", 1),
    ("Florianopolis",1),
    ("Joinville",1),
    ("Maringa",2),
    ("Curitiba",2),
    ("Cascavel",2),
    ("Porto Alegre",3),
    ("Gramado",3),
    ("Pelotas",3);

-- Exibe as cidades e seus estados
select cidades.*, estados.nome as estado
from cidades
inner join estados on cidades.id_estado = estados.id;
