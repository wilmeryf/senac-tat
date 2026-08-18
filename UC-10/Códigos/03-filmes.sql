/*
DATA: 13 de agosto de 2026
Este código está relacionado com "01-Introdução-Banco-de-Dados.md" e "02-Consultando-filtrando.md"
MySQL Workbench
*/

create database filmes;
use filmes;

create table generos (
	id int auto_increment primary key,
	nome varchar(100)
);

insert into generos (nome)
values
('Ação'),
('Comédia'),
('Terror');

create table filmes (
	id int auto_increment primary key,
	titulo varchar(100),
	duracao int
);

alter table filmes
add column id_genero int;

alter table filmes
add constraint fk_genero
foreign key (id_genero)
references generos(id);

show create table filmes;

insert into filmes (id_genero, titulo, duracao)
values
(1, 'John Wick', 101),
(1, 'Mad Max', 120),
(2, 'Superbad: É Hoje', 113),
(3, 'Invocação do Mal', 112),
(3, 'O Hereditário', 127);

select*from filmes;
select*from generos;

select*from filmes
where duracao > 100;

select*from filmes
order by titulo asc;

select*from filmes
order by duracao desc;

select
	filmes.titulo,
	filmes.duracao,
	generos.nome
from filmes
inner join generos
on filmes.id_genero = generos.id;

select
	filmes.titulo,
	filmes.duracao,
	generos.nome
from filmes
inner join generos
on filmes.id_genero = generos.id
where filmes.id_genero = 1;

select
	filmes.titulo,
	filmes.duracao,
	generos.nome
from filmes
inner join generos
on filmes.id_genero = generos.id
where filmes.duracao > 110
order by filmes.id_genero desc;

select
	filmes.titulo,
	filmes.duracao,
	generos.nome
from filmes
inner join generos
on filmes.id_genero = generos.id
where generos.nome = 'Comédia';
