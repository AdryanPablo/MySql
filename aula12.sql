use cadastro;

desc usuarios;
select * from usuarios;

select * from usuarios
where nome like 'C%'
order by sexo;

select * from usuarios
where nome like '%a%'
order by nome;

select * from usuarios
where nome like '_a%'
order by nome;

select distinct nacionalidade from usuarios
order by nacionalidade;

select count(*) from usuarios;

select count(*) from usuarios
where sexo = 'F';

select max(peso) from usuarios;

/* Não funcionou */
select nome, min(altura) from usuarios;

/* Solução */
select nome, altura from usuarios
where altura = (select min(altura) from usuarios);

select sum(peso) from usuarios;	/* Soma */

select avg(peso) from usuarios;	/* Média */