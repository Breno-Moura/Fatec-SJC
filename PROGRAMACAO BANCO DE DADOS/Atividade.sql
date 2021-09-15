/*BRENO GABRIEL PIRES MOURA - 3º BANCO DE DADOS*/

/*1)-----lista cd com data maior que 1/6/2017 e preço venda maior que 80.50-----*/

select cd_nome,cd_preco_venda,cd_data_lancamento from cd 
where cd_data_lancamento > '01-jun-2017' and cd_preco_venda > 80.50 order by cd_nome;

/*2)-----lista nome do autor e quantidade de musicas que cada autor possui e total no final-----*/

select a.aut_nome, count(a.aut_codigo)"quantidade" from autor a, autor_musica am, musica m
where a.aut_codigo = am.aut_codigo and am.mus_codigo = m.mus_codigo
group by rollup (a.aut_nome);

/*3)-----exibe o nome do cd mais caro-----*/

select cd_nome from cd 
where cd_preco_venda = (select max(cd_preco_venda) from cd);

/*4)-----lista gravadoras que tem mais de 10 cds-----*/

select grav_nome, count(cd.grav_codigo) from cd, gravadora g where g.grav_codigo = cd.grav_codigo group by grav_nome having count(grav_nome) > 10;

/*5)-----lista autores relacionados a cd_codigo 1-----*/

select a.aut_nome from autor a, autor_musica am, musica m, faixa f where a.aut_codigo = am.aut_codigo and am.mus_codigo = m.mus_codigo and m.mus_codigo = f.mus_codigo and f.cd_codigo = 1 group by a.aut_nome;

/*6)-----trigger-----*/

----tabela----
create table hist_CD_Preco(
    data date,
    usuario VARCHAR(30),
    preco_anterior NUMBER(14,2),
    preco_novo NUMBER (14,2)
    );

----trigger----
create or replace trigger log_CD_Preco after update on cd
for each row
begin
    insert into hist_CD_Preco values(sysdate, user, :old.cd_preco_venda, :new.cd_preco_venda);
end;

----update----
update cd set cd_preco_venda = 15
where cd_codigo = 1;

select * from hist_CD_Preco;


/*7)-----Alternativas-----*/

/*Alternativas Respectivas:
D
D
C
A
*/