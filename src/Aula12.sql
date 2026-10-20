use cadastro;

select * from cursos
where nome like 'p%'; #%mostra todos que possuem o parametros que acompanha (no comeco)

select * from cursos
where nome like '%a'; #%mostra todos que possuem o parametros que acompanha (no final)

select * from cursos
where nome like 'a%a'; #%mostra todos que possuem o parametros que acompanha (independe da posicao)

update cursos
set nome = 'Photoshop'
where nome = 'Photoshop5' #alterar photoshop

select * from cursos
where nome like 'ph%p'; #%mostra todos que possuem o parametros que acompanha

select * from cursos
where nome like 'ph%p_'; #%mostra todos que possuem o parametros que acompanha (_ faz com que mostre casos que obrigatoriamente tenha algo depois)

select * from gafanhotos
where nome like '%silva%';

select distinct carga from cursos; #so mostra a primeira ocorrencia de cada carga horaria disponivel

select distinct nacionalidade from gafanhotos; #so mostra a primeira ocorrencia de cada nacionalidade

select count(nome) from cursos; #mostra quantidade de cursos cadastrados

select * from cursos where carga > 40;

select count(*) from cursos where carga > 40 #conta total de ocorrencias em que a carga é maior que 40

select max(carga) from cursos; #checa o valor maximo no registro

select min(carga) from cursos; #checa o valor minimo

select nome, min(totaulas) from cursos where ano = '2016' group by nome limit 1;

select sum(totaulas) from cursos where ano = '2016'; #mostra o somatorio dos valores do valor esolhido

select avg(totaulas) from cursos where ano = '2016'; #mostra a media do valor
