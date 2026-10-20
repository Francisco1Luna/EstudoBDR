use cadastro;

select carga from cursos
group by carga; #agrupa os registros

select carga, count(nome) from cursos
group by carga; #agrupa os registros e conta quantos nomes diferentes tem cada carga horaria tem

select totaulas, count(*) from cursos
group by totaulas
order by totaulas; # agrupa e mostra a quantidade de cursos que tem o mesmo tot de aulas

select * from cursos
where totaulas = 30;

select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*); #todos os anos em que a contagem total é maior/igual 5.

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);