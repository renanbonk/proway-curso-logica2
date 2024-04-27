-- criar uma tabela de estados (id, nome)
-- 		cadastrando 3 estados

-- criar uma tabela de cidades (id, id_estado, nome)
-- 		cadastrando 3 cidades para estados diferentes
-- consultar as cidades utilizando inner join


drop database if exists proway;
create database proway;
use proway;

create table estados (
	id int auto_increment,
	nome varchar (35) not null,
	primary key (id)
);

insert into estados (nome) values
	("Santa Catarina"),
	("Paraná"),
	("Rio Grande do sul");
select id, nome from estados;

create table cidades (
id int auto_increment,
id_estado int not null,
nome varchar (35),
foreign key (id_estado) references estados (id),
primary key (id)
);

insert into cidades (nome, id_estado) values
("Blumenau", 1);
]
select * from cidades
inner join estados on (cidades.id_estado= estados.id)