show schemas; -- consultar todos os bancos de dados
create database if not exists proway; -- Criar o banco de dados 'proway'
show schemas; -- Consultar todos os bd
use proway; -- definir qual o bd que será ultilizado
create table if not exists alunos(
	codigo INT, -- coluna do tipo inteiro
	nome VARCHAR(40) -- coluna do tipo de texto com tamanho máximo de 40 caracteres
);
show tables; -- consulta todas as tabelas do banco de dados  selecionado
select codigo, nome from alunos; -- consultar os registros da tabela de alunos

-- Apagar os registros com nome de Bernardo e Cintia
delete from alunos where nome = "Bernardo";
delete from alunos where nome = "Cintia";

-- Criar tregistro na tabela de alunos
insert into alunos (codigo,nome) value (1234,"Bernardo");

-- Consultar os registros da tabela de alunos
select codigo, nome from alunos;

insert into alunos (codigo, nome) value (1235, "Cintia");


-- Apresentar a estrutura da tabela de alunos
describe alunos;

-- Adicionar uma coluna telefone na tabela de alunos
alter table alunos add column telefone VARCHAR(13);

-- Consultar os registros da tabela de alunos
select codigo, nome, telefone from alunos;

-- Atualizar o telefone do Bernardo 
update alunos set telefone  = "47 99123-2039" where codigo = 1234;

-- Atualizar o telefone do Cintia
update alunos set telefone = "47 99827-3918" where codigo = 1235;

alter table alunos add column endereco VARCHAR (100);

update alunos set endereco = "Rua Maria da Silva" where codigo = 1234;
update alunos set endereco = "Rua das flores" where codigo = 1235;

select codigo, nome, telefone, endereco, cep from alunos;



alter table alunos add column cep VARCHAR(9);

update alunos set cep = "89070-203" where codigo = 1234;
update alunos set cep = "89070-260" where codigo =1235;

select codigo, nome, telefone, endereco, cep from alunos;



alter table alunos add column numero INT;

update alunos set numero = 120 where codigo = 1234;
update alunos set numero = 200 where codigo = 1235;

select codigo, nome, telefone, endereco, cep, numero from alunos;



alter table alunos add column cidade VARCHAR(12);

update alunos set cidade = "Blumenau" where codigo = 1234;
update alunos set cidade = "Blumenau" where codigo = 1235;

select codigo, nome, telefone, endereco, cep, numero, cidade from alunos;



alter table alunos add column estado VARCHAR(2);

update alunos set estado = "SC" where codigo = 1234;
update alunos set estado = "SC" where codigo = 1235;

select codigo, nome, telefone, endereco, cep, numero, cidade, estado from alunos;



alter table alunos add column cursos VARCHAR(100)

update alunos set cursos = "LO, LO2, Python1" where codigo = 1234;
update alunos set cursos = "LO, LO2, JavaScript, Java, NodeJS, Angular, Typescript" where codigo = 1235;

select codigo, nome, telefone, endereco, cep, numero, cidade, estado, cursos from alunos; 


