use cadastro;

# exercicio 1
select nome from gafanhotos
where sexo = 'F';

# exercicio 2
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

# exercicio 3
select nome, profissao from gafanhotos
where profissao = 'Programador' and sexo = 'M';

# exercicio 4
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'brasil' and nome like 'j%';

# exercicio 5
select nome, nacionalidade from gafanhotos
where nacionalidade != 'brasil' and peso < 100 and nome like '%silva%';

# exercicio 6

select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'brasil';

# exercicio 7
select avg(peso) from gafanhotos;

# exercicio 8
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade != 'brasil' and nascimento between '1990-01-01' and '2000-12-31';

# exercicio 9
select count(*) from gafanhotos
where sexo = 'f' and altura > 1.9;