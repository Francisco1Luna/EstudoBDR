use cadastro;

select * from cursos
order by nome desc; #ao contrario (baixo pra cima)

select nome, carga, ano from cursos; #seleciona quais colunas você escolher

select ano, nome, carga from cursos order by ano, nome; #ordena primeiro por ano, depois por nome

select nome, descricao, ano from cursos
where ano <= '2015'
order by ano desc , nome;

select * from cursos
where totaulas between 20 and 30
order by ano desc , nome; #seleciona o que tiver o total de aulas entre 20 e 30

select idcurso, nome, ano from cursos
where ano in (2014,2016,2018)
order by nome; # seleciona id e nome dos cursos dos anos de 2014, 2016, 2018

select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;

#select é DQL pois manipula tabelas