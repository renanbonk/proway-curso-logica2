drop database if exists locadoraProway;
create database locadoraProway;
use locadoraProway;

create table canais (
	id int auto_increment,
	nome varchar (50),
	primary key (id)
);

insert into canais (nome) values
	("Primo Rico"),
	("Curso em video"),
	("Os Sócios");

select * from canais;

create table videos (
	id int auto_increment,
	id_canal int not null,
	nome varchar (150),
	
	foreign key (id_canal) references canais(id),
	primary key(id)
);

show tables;

insert into videos (id_canal, nome) values
	(1, "COMO IR DO MIL AO MILHÃO | Planejamento financeiro FÁCIL"),
	(1, "QUANTO RENDE R$ 1.000 NA CAIXINHA DO NUBANK? | VALE A PENA INVESTIR?"),
	(1, "COMO MONTAR UMA CARTEIRA DE INVESTIMENTOS PARA INICIANTES (NA PRÁTICA)"),
	(2, "Curso de Linux - Primeiros Passos"),
	(2, "Onde o Linux pode ser usado?"),
	(2, "De onde veio o Linux? O que é software livre?"),
	(3, "O SEGREDO POR TRÁS DA PRODUTIVIDADE DOS MILIONÁRIOS | Os Sócios 187"),
	(3, "PROFESSOR HOC SENDO DIRETO SOBRE AS ELEIÇÕES AMERICANAS | Os Sócios 186"),
	(3, "APRENDA A CRIAR BONS HÁBITOS (Com Caio Carneiro e Pedro Sobral) | Os Sócios 187");

select * from videos;

select
	canais.nome as "Canais",
	videos.nome as "Videos"
	from videos
	
inner join canais on (videos.id_canal = canais.id)
order by canais.nome asc, videos.nome asc;

create table convidados (
	id int auto_increment,
	nome varchar (50),
	primary key(id)
);

insert into convidados(nome) values
	("Tiago Niagro"),
	("Guanabara"),
	("Bruno Perini");

select * from convidados;

select 
	convidados.nome as "Convidado"
	from convidados;

-- Continuação
-- Tabela participante (id, id_video, id_convidado, salario)






	



	
	