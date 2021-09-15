select f.func_cod, 
    f.func_nome, 
    d.dep_descricao,
    t.tel_numero
from departamento d left outer join funcionario f 
on f.dep_id = d.dep_id
left outer join telefone t 
on t.func_cod = f.func_cod
order by f.func_nome, d.dep_descricao;

select 
f.func_cod, f.func_nome, d.dep_descricao,t.tel_numero
from departamento d, funcionario f, telefone t
where f.dep_id(+) = d.dep_id and
t.func_cod(+) = f.func_cod
order by f.func_nome, d.dep_descricao;

select f.func_nome Funcionario, g.func_nome Gerente
from funcionario f, funcionario g
where f.gerente_cod=g.func_cod;

select avg(func_sal) 
from funcionario
where dep_id=2;

select sum(func_sal), sum(func_sal)
from funcionario;

select min(func_sal), max(func_sal)
from funcionario;

select count(*)
from funcionario
where dep_id=2;

select count(dep_id)
from funcionario;

select count(DISTINCT dep_id)
from funcionario;

update funcionario
set func_sal = null
where func_cod = 2;

select avg(func_sal)
from funcionario;

select avg(nvl(func_sal,0))
from funcionario;

/*MIN = Valor Mínimo de um conjunto de valores
MAX = Valor Máximo de um conjunto de valores
AVG = Média Aritmética de um conjunto de valores
SUM = Total (Soma) de um conjunto de valores
COUNT = Contar quantidade total de itens*/

select dep_id, avg(func_sal)
from funcionario
group by dep_id;

select f.dep_id, d.dep_descricao, avg(func_sal)
from funcionario f, departamento d
where f.dep_id = d.dep_id
group by f.dep_id, d.dep_descricao
having avg(f.func_sal) > 3500;