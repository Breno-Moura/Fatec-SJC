select * from pedido where ped_data = '12/04/11';

select
    prod_descricao Nome,
    pro_valor_unidade Valor,
    pro_valor_unidade + (pro_valor_unidade * 0.1) Valor10
from produto;

select count (*) from cliente;

select cli_nome, ped_data from pedido cross join cliente; --produto cartesiano

select c.cli_nome, p.ped_data
from pedido p, cliente c
where p.cli_codigo = c.cli_codigo;
    
select cli_nome, p.ped_data
from pedido p inner join cliente c on c.cli_codigo = p.cli_codigo;

--1)Listar os pedidos realizados pelo vendedor José

select ped_numero, ped_data, ven_nome
from pedido p inner join vendedor v on v.ven_nome = 'José' and v.ven_codigo = p.ven_codigo;

select * from cliente;

select c.cli_codigo, c.cli_nome, t.tel_numero 
from cliente c, telefone t
where c.cli_codigo=t.cli_codigo(+)

select c.cli_codigo, c.cli_nome, t.tel_numero 
from telefone t right outer join cliente c
on c.cli_codigo=t.cli_codigo

select p.prod_descricao from produto p, item_do_pedido i where i.pro_codigo=p.pro_codigo and i.ped_numero=1; -- listando produtos do pedido num 1;

select pr.prod_descricao, v.ven_nome
from produto pr, item_do_pedido i, pedido p, vendedor v
where p.ped_numero=i.ped_numero and i.pro_codigo=pr.pro_codigo and p.ven_codigo=8 and upper(v.ven_nome)='JOSIAS'; --listando nome dos produts pelo vendedor cod = 8;

