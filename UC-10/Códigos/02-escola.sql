/*
DATA: 07 de agosto de 2026
Este código está relacionado com "01-Introdução-Banco-de-Dados.md"
MySQL Workbench
*/

create database escola;
use escola;

create table cursos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(100)
);

describe cursos;

insert into cursos (nome)
values
('Banco de Dados'),
('Redes'),
('Hardware');

select*from cursos;

create table professores (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(100)
);

describe professores;

insert into professores (nome)
values
('Ramos'),
('José'),
('Sirlene');

select*from professores;

create table alunos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome varchar(100),
	idade int(20)
);

alter table alunos
add column id_curso int;

alter table alunos
add constraint fk_curso
foreign key (id_curso)
references cursos(id);

show create table alunos;

insert into alunos (id_curso, nome, idade)
values
('1', 'Anderson', '19'),
('2', 'Gustavo', '26'),
('3', 'Ryan', '25');

select*from alunos;

select*from cursos where id = 1;
select*from cursos where id = 2;
select*from cursos where id = 3;

select
	alunos.nome,
	cursos.nome
from alunos
inner join cursos
on alunos.id_curso = cursos.id;
