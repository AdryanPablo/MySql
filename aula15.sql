use cadastro;

desc cursos;
desc usuarios;

alter table usuarios
add column cursopreferido int;

alter table usuarios
add foreign key (cursopreferido)
references cursos (idcurso);

select nome from cursos;
select nome, id, cursopreferido from usuarios;

update usuarios set cursopreferido = '1' where id = '1';

select u.nome, c.nome
from usuarios as u join cursos as c
on c.idcurso = u.cursopreferido
order by u.nome;

select u.nome, c.nome
from usuarios as u left outer join cursos as c
on c.idcurso = u.cursopreferido
order by u.nome;

select u.nome, c.nome
from usuarios as u right outer join cursos as c
on c.idcurso = u.cursopreferido
order by u.nome;