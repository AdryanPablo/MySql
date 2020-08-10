use cadastro;

desc cursos;
desc usuarios;

select * from cursos;
select * from usuarios;

insert into cursos values
('1', 'HTML', 'Curso de criação de sites com HTML', '40', '36', '2013'),
('2', 'Javascript', 'Curso de JS', '40', '17', '2019'),
('3', 'Teste1', 'Teste1', '20', '10', '2015'),
('4', 'Teste2', 'Teste2', '30', '15', '2014');

update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set carga = '40', totalAulas = '20'
where idcurso = '3';

update cursos
set carga = '50', totalAulas = '25'
where idcurso = '4'
limit 1;

delete from cursos
where nome = 'Teste1'
limit 1;

truncate cursos;