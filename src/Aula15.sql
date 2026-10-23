use cadastro;

alter table gafanhotos add column cursopreferido int;

alter table gafanhotos
add foreign key(cursopreferido)
references cursos(idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '12' where id = 5;

#delete from cursos where idcurso = 6;

select nome, cursopreferido from gafanhotos;

select nome ,cursopreferido from gafanhotos;

select nome, ano from cursos;

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos join cursos
on cursos.idcurso = gafanhotos.cursopreferido; #para ajustar as atribuicoes

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos left outer join cursos
on cursos.idcurso = gafanhotos.cursopreferido; #para ajustar as atribuicoes/ preferencia a esquerda

select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano
from gafanhotos right outer join cursos
on cursos.idcurso = gafanhotos.cursopreferido; #para ajustar as atribuicoes/ preferencia a direita








