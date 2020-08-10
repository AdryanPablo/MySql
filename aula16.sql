use cadastro;

desc usuarios;
desc cursos;

create table usuario_assiste_curso (

	id int not null auto_increment,
    data date,
    idusuario int,
    idcurso int,
    primary key(id),
    foreign key (idusuario) references usuarios (id),
    foreign key (idcurso) references cursos (idcurso)

) default charset  = utf8;

insert into usuario_assiste_curso values
(default, '2014-03-01', '1', '2');

select * from usuario_assiste_curso;

select u.nome, c.nome from usuarios as u
join usuario_assiste_curso as a
on u.id = a.idusuario
join cursos as c
on a.idcurso = c.idcurso
order by u.nome;