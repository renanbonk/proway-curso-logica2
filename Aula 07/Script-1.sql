drop database if exists locadoraProway;
create database locadoraProway;
use locadoraProway;

create table categorias(
	id int auto_increment,
	nome varchar (100),
	primary key (id)
);

insert into categorias (nome) values
	("Suspense"),
	("Romance"),
	("Comédia"),
	("Ação"),
	("Comédia romantica"),
	("Ficção científica");
select * from categorias;

create table filmes (
	id int auto_increment,
	id_categoria int not null,
	nome varchar (100),
	
	-- FK => PK
	-- Relacionamento da coluna id_categoria (PK) com a coluna id (PK) da tabela categorias
	foreign key (id_categoria) references categorias (id),
	primary key(id)
);
	
	
insert into filmes (id_categoria, nome) values
	(2, "A lagoa azul"),
	(6, "Vingadores");

insert into filmes (nome, id_categoria) values
	("Loucademia de policia", 3),
	("Como se fosse a primeira",5),
	("O astronauta", 6),
	("Logan", 4),
	("Dura de matar", 4),
	("Querido John",2);

select * from filmes;
select
	categorias.nome as "Categoria", -- nome da categoria
	filmes.nome as "Filme" -- nome do filme
	from filmes
	
	-- inner join nomeOutraTrabala on (nomeTabelaFilha.fk = nomeOutraTabela.pk)
	inner join categorias on (filmes.id_categoria = categorias.id)
	order by categorias.nome asc, filmes.nome asc;
	