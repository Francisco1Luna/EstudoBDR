#manipulando linhas

use cadastro;

insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'), #html 5
('2', 'Algoritmos', 'Lógica de Progamação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'), #2015 php
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'), #2015 java 40 horas
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '37', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;

update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'php' , ano = '2015'
where idcurso = '4';

update cursos
set nome = 'java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1; #limitar a um registro a alteracao (altera apenas a primeira ocorrencia)

update cursos
set ano = '2018', carga = '0'
where ano = '2019'
limit 1;

delete from cursos
where idcurso = '8';

delete from cursos
where ano = '2018'; #apaga a as linhas onde o ano é igual a 2018

truncate table cursos; #apaga todos os registros
