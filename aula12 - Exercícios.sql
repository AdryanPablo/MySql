/*Exercícios:*/

/* 1) Gafanhotas: */

select * from gafanhotos
where sexo = 'F'
order by nome;

/* 2) Nascidos entre 1/Jan/2020 e 31/Dez/2015: */

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nome;

/* 3) Homens programadores: */

select * from gafanhotos
where sexo = 'M' and profissao = 'Programador'
order by nome;

/* 4) Brasileiras com 'J': */

select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

/* 5) Nome e nacionalidade gringos Silva com menos de 100 kg: */

select nome, nacionalidade from gafanhotos
where sexo = 'M' and nome like '_Silva%' and nacionalidade != 'Brasil' and peso < '100'
order by nome, peso;

/* 6) Brasileiro mais alto: */

select max(altura) from gafanhotos
where sexo = 'M' and nacionalidade = 'Brasil';

/* 7) Peso médio dos gafanhotos: */

select avg(peso) from gafanhotos;

/* 8) Menor peso das gafanhotas brasileiras nascidas entre 01/Jan/1990 e 31/Dez/2000: */

select min(peso) from gafanhotos
where sexo = 'F' and naciolidade = 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

/* 9) Quantidade de gafanhotas com mais de 1.9: */

select count(*) from gafanhotos
where sexo = 'F' and altura > '1.9';