/*Pegar o histórico de valores do produto 0001*/
SELECT
    prod_cod "Código",
    preco_data "Última data do valor",
    valor "Valor"
FROM
    preco
WHERE
    prod_cod = '0001';

/*Pegar os Produtos cujo valor já foi menor que 5000*/
SELECT
    produto.prod_nome "Produto",
    preco.preco_data "Última data do Valor",
    preco.valor "Valor"
FROM
    produto
    INNER JOIN preco ON produto.prod_cod = preco.prod_cod
    AND preco.valor <= 5000;

/*Selecionar a quantidade de forncedores por categoria e o total*/
SELECT
    forn_categoria "Categoria",
    count(forn_categoria) "Quantidade"
FROM
    fornecedor
GROUP BY
    rollup(forn_categoria);

/*Selecionar todos os produtos cuja unidade de medida seja CD e seus respectivos valores*/
SELECT
    produto.prod_nome "Produto",
    preco.valor "Valor"
FROM
    produto
    INNER JOIN preco ON produto.prod_cod = preco.prod_cod
WHERE
    prod_un_medida = 'CD'
    AND preco.preco_data = (
        SELECT
            max(preco_data)
        FROM
            preco p
        WHERE
            p.prod_cod = preco.prod_cod
    );

/*Selecionar os valores atualizados de todos os produtos*/
SELECT
    *
FROM
    preco
WHERE
    preco.preco_data = (
        SELECT
            max(p2.preco_data)
        FROM
            preco p2
        WHERE
            p2.prod_cod = preco.prod_cod
    )
ORDER BY
    prod_cod;

/*Listas os clientes e seus respectivos cartões*/
SELECT
    cartao.car_numero,
    cartao.car_data,
    cliente.cli_nome,
    cliente.cli_cpf_cnpj
FROM
    cartao
    RIGHT JOIN cliente ON cartao.cpf_cnpj = cliente.cli_cpf_cnpj;

/*Selecionar o total de salário por cargo de funcionário e o total a ser pago no fim do mês*/
SELECT
    func_cargo,
    SUM(func_salario),
    grouping(func_cargo)
FROM
    funcionario
GROUP BY
    cube(func_cargo)
ORDER BY
    func_cargo;

/*Selecionar o valor total das vendas filtrando pelo método de pagamento e cujo valor total seja maior que 20000*/
SELECT
    forma_pgto_venda,
    sum(valor_total_venda)
FROM
    venda
GROUP BY
    forma_pgto_venda
HAVING
    sum(valor_total_venda) > 20000
ORDER BY
    forma_pgto_venda;

/*View que mostra valores não sigilosos do funcionario*/
CREATE
OR REPLACE VIEW view_funcionario AS
SELECT
    Func_CPF_CNPJ,
    Func_nome,
    Func_email,
    Func_cargo
FROM
    Funcionario;

SELECT
    *
FROM
    view_funcionario;

/*View que consulta a quantidade de produtos por marca*/
CREATE
OR REPLACE VIEW produto_marca AS
SELECT
    PROD_MARCA,
    COUNT(PROD_COD) "QUANTIDADE"
FROM
    PRODUTO
GROUP BY
    ROLLUP(PROD_MARCA);

SELECT
    *
FROM
    produto_marca;
	
/*View que mostra quantos produtos têm por fornecedor*/	
	
CREATE OR REPLACE VIEW fornecedor_por_produto AS
SELECT forn_cod, count(prod_cod)"Quantidade" FROM produto_fornecedor 
GROUP BY (FORN_COD) ORDER BY forn_cod;

/*Trigger*/

CREATE OR REPLACE TRIGGER trigger_preco AFTER UPDATE ON Produto
FOR EACH ROW
BEGIN

    INSERT INTO Preco_Historico(prod_cod, preco_data, Prod_preco) VALUES (:old.Prod_cod, SYSDATE, :new.prod_preco);

END;