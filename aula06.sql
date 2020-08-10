use cadastro;
desc usuarios;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
drop column profissao;

alter table pessoas
modify column profissao varchar(20);

alter table pessoas
change column profissao prof varchar(20);

alter table pessoas
rename to usuarios;

/* Nova tabela */

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totalAulas int unsigned,
ano year default '2020'
) default charset = utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso);

desc cursos;

create table if not exists teste (teste int);

drop table if exists teste;