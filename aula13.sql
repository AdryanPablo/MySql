use cadastro;

desc usuarios;

select distinct sexo from usuarios;

select sexo, count(sexo) from usuarios
group by sexo;

select sexo, count(*) from usuarios
where nascimento <= '1990-12-31'
group by sexo;

select nacionalidade, count(*) from usuarios
group by nacionalidade
order by count(*), nacionalidade;

select nacionalidade, count(*) from usuarios
group by nacionalidade
having count(nacionalidade) > '2'
order by count(*) desc, nacionalidade;

select avg(peso) from usuarios;

select peso, count(peso) from usuarios
where sexo = 'M'
group by peso
having peso > (select avg(peso) from usuarios);