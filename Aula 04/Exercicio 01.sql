use proway;

create table if not exists Lanches(
	codigo INT,
	nome VARCHAR(30),
	quantidade_consumo, preco_unitario INT
);

show tables;

insert into lanches (Codigo,nome,quantidade_consumo) value (1,"Pão de queijo",1);
insert into lanches (Codigo,nome,quantidade_consumo) value (2,"Fatia pao",4);
insert into lanches (Codigo,nome,quantidade_consumo) value (3,"Patê de linguiça Blumenau",8);
insert into lanches (Codigo,nome,quantidade_consumo) value (4,"uva",20);
insert into lanches (Codigo,nome,quantidade_consumo) value (5,"bolo chocolate",2);
insert into lanches (Codigo, nome,quantidade_consumo) value (6,"suco",1)

select codigo, nome, quantidade_consumo from lanches;

describe lanches;

alter table lanches add column preco_unitario INT;

update lanches set preco_unitario = 2.5 where codigo = 1;
update lanches set preco_unitario = 1 where codigo = 2;
update lanches set preco_unitario = 2.5 where codigo = 3;
update lanches set preco_unitario = 0.25 where codigo = 4;
update lanches set preco_unitario = 5 where codigo = 5;
update lanches set preco_unitario = 2 where codigo = 6;

select codigo, nome, quantidade_consumo, preco_unitario from lanches;



-- Consultar o nome, quantidade, preço unitário e total por lanches
select 
	nome, 
	quantidade_consumo,
	preco_unitario as "Preço unitário",
	quantidade_consumo * preco_unitario as "Total"
from lanches;	


-- Consultar o nome e quantidade dos lanches com quanidade maior que 5
select 
	nome,
	quantidade_consumo
from lanches
where quantidade_consumo >5;


-- Consultar o nome ornenado de A-Z os nomes
select 
	nome
from lanches 
order by nome asc;


-- Consultar o nome ornenado de Z-A os nomes
select 
	nome
from lanches 
order by nome desc;





