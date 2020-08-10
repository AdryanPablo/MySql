use cadastro;

desc usuarios;

select * from usuarios
order by sexo desc, nascimento asc;

select nome, nascimento, sexo from usuarios
order by nome asc;

select nome, nascimento, altura from usuarios
where sexo = 'F'
order by nome asc;

select nome, peso, altura from usuarios
where peso <= 70
order by sexo, nome;

/*
Operadores Relacionais:

>  Maior
<  Menor
>= Maior igual
<= Menor igual
=  Igual
!= Diferente
<> Diferente
*/

select nome, altura from usuarios
where altura between 1.7 and 1.8
order by sexo, nome;

/*
between = seleciona valores em um intervalo
in () = seleciona valores específicos
*/

select nome, altura from usuarios
where sexo = 'F' and altura >= 1.6
order by nome;

select nome, sexo, altura from usuarios
where sexo = 'M' or altura <= 1.7
order by sexo, altura;