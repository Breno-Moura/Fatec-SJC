DROP TABLE Funcionario CASCADE CONSTRAINTS;

DROP TABLE Cliente CASCADE CONSTRAINTS;

DROP TABLE Cartao CASCADE CONSTRAINTS;

DROP TABLE Produto CASCADE CONSTRAINTS;

DROP TABLE Preco_Historico CASCADE CONSTRAINTS;

DROP TABLE Venda CASCADE CONSTRAINTS;

DROP TABLE Historico_venda CASCADE CONSTRAINTS;

DROP TABLE Produto_venda CASCADE CONSTRAINTS;

DROP TABLE Fornecedor CASCADE CONSTRAINTS;

DROP TABLE Produto_fornecedor CASCADE CONSTRAINTS;

CREATE TABLE Funcionario (
    Func_nome VARCHAR2(100),
    Func_email VARCHAR2(30),
    Func_senha VARCHAR2(30),
    Func_cargo VARCHAR(100),
    Func_salario FLOAT,
    Func_CPF_CNPJ VARCHAR2(14) PRIMARY KEY
);

CREATE TABLE Cliente (
    Cli_nome VARCHAR2(100),
    Cli_email VARCHAR2(30),
    Cli_senha VARCHAR2(30),
    Cli_CPF_CNPJ VARCHAR2(14) PRIMARY KEY
);

CREATE TABLE Cartao (
    Car_numero VARCHAR2(20) PRIMARY KEY,
    Car_nome VARCHAR2(100),
    Car_data VARCHAR(5),
    Car_cod_seguranca VARCHAR2(3),
    CPF_CNPJ VARCHAR2(14),
    FOREIGN KEY (CPF_CNPJ) REFERENCES Cliente(Cli_CPF_CNPJ)
);

CREATE TABLE Produto (
    Prod_cod VARCHAR2(10) PRIMARY KEY,
    Prod_nome VARCHAR2(40),
    Prod_marca VARCHAR2(40),
    Prod_un_medida VARCHAR2(20),
    Prod_preco NUMBER
);

CREATE TABLE Preco_Historico (
    Prod_cod VARCHAR2(10),
    Preco_data date,
    Prod_preco NUMBER,
    FOREIGN KEY (Prod_cod) REFERENCES Produto(Prod_cod),
    CONSTRAINT UK_PRECO UNIQUE(Prod_cod, Preco_data)
);

CREATE TABLE Venda (
    Cod_venda VARCHAR2(10) PRIMARY KEY,
    Valor_total_venda NUMBER,
    Forma_pgto_venda VARCHAR2(20),
    CPF_CNPJ VARCHAR2(14),
    Prod_cod VARCHAR2(10),
    FOREIGN KEY (prod_cod) REFERENCES Produto(Prod_cod),
    FOREIGN KEY (CPF_CNPJ) REFERENCES Cliente(Cli_CPF_CNPJ)
);



CREATE TABLE Historico_venda (
    Hist_data VARCHAR2(20) PRIMARY KEY,
    Cod_venda VARCHAR2(10) UNIQUE,
    FOREIGN KEY (Cod_venda) REFERENCES Venda(Cod_venda)
);

CREATE TABLE Produto_venda (
    Prod_cod VARCHAR2(10) PRIMARY KEY,
    Cod_venda VARCHAR2(10) UNIQUE,
    Quantidade_Prod NUMBER,
    FOREIGN KEY (Prod_cod) REFERENCES Produto(Prod_cod),
    FOREIGN KEY (Cod_venda) REFERENCES Venda(Cod_venda)
);

CREATE TABLE Fornecedor (
    Forn_nome VARCHAR2(100),
    Forn_categoria VARCHAR2(40),
    Forn_cod VARCHAR2(10) PRIMARY KEY
);

CREATE TABLE Produto_Fornecedor (
    Prod_cod VARCHAR2(10),
    Forn_cod VARCHAR2(10),
    FOREIGN KEY (Prod_cod) REFERENCES Produto(Prod_cod),
    FOREIGN KEY (Forn_cod) REFERENCES Fornecedor(Forn_cod),
    CONSTRAINT UK_PROD_FORN UNIQUE(Prod_cod, Forn_cod)
);
/*------------------------------------*/  
/* FUNCIONARIO */
/*------------------------------------*/  
INSERT INTO
    Funcionario
VALUES
    (
        'Marcos Oliveira Alexandre',
        'marquinpvp@gmail.com',
        '12345678',
        'Atendente',
        1.200,
        '500.647.658-30'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Pedro Paulo Silva',
        'pps@gmail.com',
        '12345678',
        'Atendente',
        1.200,
        '100.147.658-30'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Carlos Santos',
        'carlinsts@gmail.com',
        '12345678',
        'Atendente',
        1.200,
        '200.647.658-20'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Arthur Reis',
        'artking@gmail.com',
        '12345678',
        'Repositor de estoque',
        1.300,
        '600.646.698-40'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Pedro Augusto',
        'pedrinAug@gmail.com',
        '12345678',
        'Repositor de estoque',
        1.300,
        '950.157.348-10'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Breno Moura',
        'brenoura@gmail.com',
        '12345678',
        'Repositor de estoque',
        1.300,
        '456.258.951-35'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Luis Chagas',
        'luisaoch@gmail.com',
        '12345678',
        'Repositor de estoque',
        1.300,
        '357.951.258-54'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Ygor Moraes',
        'ygumora@gmail.com',
        '12345678',
        'Repositor de estoque',
        1.300,
        '381.183.456-98'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Paula Santos',
        'paulinha@gmail.com',
        '12345678',
        'Repositor de estoque',
        1.300,
        '957.351.468-82'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Evelyn Miranda',
        'evelynmira@gmail.com',
        '12345678',
        'Caixa',
        1.500,
        '654.789.321-12'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Carla Lorenzetti',
        'czetti@gmail.com',
        '12345678',
        'Caixa',
        1.500,
        '359.751.486-25'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Carlos Drummond',
        'drumarlos@gmail.com',
        '12345678',
        'Caixa',
        1.500,
        '349.761.259-76'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Joaquim Fernandes',
        'joanandes@gmail.com',
        '12345678',
        'Tecnico',
        2.000,
        '654.852.159-97'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Julia Dias',
        'jujunoite@gmail.com',
        '12345678',
        'Auxiliar de limpeza',
        1.200,
        '957.852.654-46'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Vanessa Nextel',
        'vana@gmail.com',
        '12345678',
        'Auxiliar de limpeza',
        1.200,
        '357.624.102-02'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Thalles Silva',
        'talinho@gmail.com',
        '12345678',
        'Auxiliar de limpeza',
        1.200,
        '500.647.956-80'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Gabriel Junior',
        'junin@gmail.com',
        '12345678',
        'Auxiliar de limpeza',
        1.200,
        '500.951.658-30'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Marcos Alves',
        'malves@gmail.com',
        '12345678',
        'Conferente',
        1.800,
        '500.647.158-30'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Alexandre Santiago',
        'santi@gmail.com',
        '12345678',
        'Conferente',
        1.800,
        '268.426.684-42'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Matheus Silva',
        'mathsil@gmail.com',
        '12345678',
        'Conferente',
        1.800,
        '500.647.600-30'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Mateus Santos',
        'matsant@gmail.com',
        '12345678',
        'Conferente',
        1.800,
        '489.324.658-15'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Luan Pedro',
        'lupe@gmail.com',
        '12345678',
        'Conferente',
        1.800,
        '145.214.452-14'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Gustavo Rocha',
        'gustapedra@gmail.com',
        '12345678',
        'Gestor de Marketing',
        2.200,
        '256.325.632-56'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Mateus Gomes',
        'matgomes@gmail.com',
        '12345678',
        'Gerente de vendas',
        2.900,
        '654.785.236-41'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Felipe Almeida',
        'fezin@gmail.com',
        '12345678',
        'Consultor de vendas',
        2.100,
        '159.357.456-85'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Eduardo Alves',
        'dudualves@gmail.com',
        '12345678',
        'Auxiliar administrativo',
        1.500,
        '578.547.785-42'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Adan Portes',
        'superadan@gmail.com',
        '12345678',
        'Gerente de estoque',
        3.000,
        '500.879.987-78'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Rebeca Lima',
        'beca@gmail.com',
        '12345678',
        'Coordenador de vendas',
        3.200,
        '500.354.658-60'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Bruna Rocha',
        'brurocha@gmail.com',
        '12345678',
        'Suporte a vendas',
        1.300,
        '500.987.258-30'
    );

INSERT INTO
    Funcionario
VALUES
    (
        'Leticia Carvalho',
        'leticarvalho@gmail.com',
        '12345678',
        'Suporte a vendas',
        1.300,
        '359.687.658-70'
    );
/*------------------------------------*/  
/* CLIENTE */
/*------------------------------------*/  
INSERT INTO
    Cliente
VALUES
    (
        'Roberto Carlos',
        'robertocarlos@gmail.com',
        '15987',
        '354.957.786-59'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Drauzio Varela',
        'drauzinvidaloka@gmail.com',
        '15897',
        '365.489.987-98'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Reginaldo Rossi',
        'reginaldos@gmail.com',
        '98787',
        '159.356.489-97'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Carlos Alberto',
        'carlosalberto@gmail.com',
        '19875',
        '159.756.421.02'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Yago Lopes',
        'yagolopes@gmail.com',
        '35146',
        '965.896.589-65'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Lucas Kauan',
        'lukauna@gmail.com',
        '15987',
        '156.456.878-99'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Adilson Decarro',
        'vrumvrum@gmail.com',
        '98756',
        '359.654.120-23'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Guilherme Guedes',
        'bolinha@gmail.com',
        '951236',
        '951.236.654-45'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Maicon de Cassia',
        'maicassia@gmail.com',
        '35698',
        '369.852.147-07'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Igor Joaquim',
        'igorjoaquim@gmail.com',
        '15987',
        '365.489.951-78'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Lucas Carlos',
        'lucascarlos@gmail.com',
        '98715',
        '365.412.399-87'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Humberto Juan',
        'hubertinho@gmail.com',
        '65412',
        '357.895.654-26'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Savio Lopes',
        'saviolopes@gmail.com',
        '15874',
        '321.456.987-03'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Lazaro Vaconcelos',
        'vaconcelos@gmail.com',
        '153248',
        '954.786.321-59'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Lucas Vaz',
        'vazlucas@gmail.com',
        '562489',
        '159.753.856-91'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Ronaldo Nazario',
        'ronaldo9@gmail.com',
        '17533',
        '533.266.987-51'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Vanderlei Dutra',
        'vanderlei@gmail.com',
        '18521',
        '359.963.321-47'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Kaique Rodrigues',
        'rodrigues@gmail.com',
        '15987',
        '954.851.365-54'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Katia Fernandes',
        'katiafernades@gmail.com',
        '15987',
        '320.120.520-95'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Maria do Carmo',
        'carmo158@gmail.com',
        '15987',
        '957.826.642-55'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Fabiola Santos',
        'fabiolasantos@gmail.com',
        '15987',
        '951.486.325-78'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Vanessa Santos',
        'vanessantos@gmail.com',
        '15987',
        '354.267.953-20'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Claudia Motta',
        'claudiamotta@gmail.com',
        '9554865',
        '635.200.100-65'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Paula Lopes',
        'paulopes@gmail.com',
        '95447',
        '753.654.951-31'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Bianca Enoca',
        'biancaenoca@gmail.com',
        '954786',
        '157.759.953-51'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Roberta Barbosa',
        'robertabarbosa@gmail.com',
        '852114',
        '753.951.456-75'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Solange da Penha',
        'solangepenha@gmail.com',
        '951236',
        '963.574.896-51'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Nadila Vasconcellos',
        'robertocarlos@gmail.com',
        '15987',
        '354.957.786-69'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Rubia Costa',
        'rubiacosta@gmail.com',
        '85247',
        '957.852.351-03'
    );

INSERT INTO
    Cliente
VALUES
    (
        'Gabriela Costa',
        'gabrielacosta@gmail.com',
        '95784',
        '963.357.167-95'
    );

/*------------------------------------*/   
/* CARTÃO */
/*------------------------------------*/  
INSERT INTO
    Cartao
VALUES
    (
        '1706 9731 2535 7019',
        'Nadila Vasconcellos',
        '3/25',
        '469',
        '354.957.786-69'
    );

INSERT INTO
    Cartao
VALUES
    (
        '4681 4542 6642 6060',
        'Roberto Carlos',
        '3/25',
        '899',
        '354.957.786-59'
    );

INSERT INTO
    Cartao
VALUES
    (
        '8836 5511 5115 4813',
        'Drauzio Varela',
        '6/25',
        '474',
        '365.489.987-98'
    );

INSERT INTO
    Cartao
VALUES
    (
        '7505 6453 1316 6399',
        'Reginaldo Rossi',
        '5/25',
        '373',
        '159.356.489-97'
    );

INSERT INTO
    Cartao
VALUES
    (
        '5673 2003 3178 4732',
        'Carlos Alberto',
        '5/25',
        '708',
        '159.756.421.02'
    );

INSERT INTO
    Cartao
VALUES
    (
        '3720 4228 3820 5272',
        'Yago Lopes',
        '10/25',
        '178',
        '965.896.589-65'
    );

INSERT INTO
    Cartao
VALUES
    (
        '8590 9685 8255 9455',
        'Lucas Kauan',
        '5/25',
        '815',
        '156.456.878-99'
    );

INSERT INTO
    Cartao
VALUES
    (
        '5020 7185 5705 1753',
        'Adilson Decarro',
        '6/25',
        '942',
        '359.654.120-23'
    );

INSERT INTO
    Cartao
VALUES
    (
        '1716 1409 5697 6101',
        'Guilherme Guedes',
        '6/25',
        '638',
        '951.236.654-45'
    );

INSERT INTO
    Cartao
VALUES
    (
        '5462 2166 4309 8654',
        'Maicon de Cassia',
        '3/25',
        '712',
        '369.852.147-07'
    );

INSERT INTO
    Cartao
VALUES
    (
        '2203 6811 9539 7042',
        'Igor Joaquim',
        '1/25',
        '358',
        '365.489.951-78'
    );

INSERT INTO
    Cartao
VALUES
    (
        '5650 6772 5854 8344',
        'Lucas Carlos',
        '1/25',
        '282',
        '365.412.399-87'
    );

INSERT INTO
    Cartao
VALUES
    (
        '5450 9831 4965 3513',
        'Humberto Juan',
        '11/25',
        '803',
        '357.895.654-26'
    );

INSERT INTO
    Cartao
VALUES
    (
        '2261 6135 6323 1740',
        'Savio Lopes',
        '4/25',
        '981',
        '321.456.987-03'
    );

INSERT INTO
    Cartao
VALUES
    (
        '8828 6640 8968 2716',
        'Lazaro Vaconcelos',
        '7/25',
        '203',
        '954.786.321-59'
    );

INSERT INTO
    Cartao
VALUES
    (
        '9184 2902 5774 3493',
        'Lucas Vaz',
        '4/25',
        '188',
        '159.753.856-91'
    );

INSERT INTO
    Cartao
VALUES
    (
        '6015 5449 4922 8749',
        'Ronaldo Nazario',
        '6/25',
        '705',
        '533.266.987-51'
    );

INSERT INTO
    Cartao
VALUES
    (
        '8558 1706 9405 2282',
        'Vanderlei Dutra',
        '12/25',
        '800',
        '359.963.321-47'
    );

INSERT INTO
    Cartao
VALUES
    (
        '7661 2467 4944 6444',
        'Kaique Rodrigues',
        '9/25',
        '346',
        '954.851.365-54'
    );

INSERT INTO
    Cartao
VALUES
    (
        '5316 9298 7955 4962',
        'Katia Fernandes',
        '5/25',
        '387',
        '320.120.520-95'
    );

INSERT INTO
    Cartao
VALUES
    (
        '9892 8919 8485 4228',
        'Maria do Carmo',
        '4/25',
        '814',
        '957.826.642-55'
    );

INSERT INTO
    Cartao
VALUES
    (
        '3289 1320 4525 9219',
        'Fabiola Santos',
        '12/25',
        '238',
        '951.486.325-78'
    );

INSERT INTO
    Cartao
VALUES
    (
        '5805 4103 9911 4703',
        'Vanessa Santos',
        '8/25',
        '584',
        '354.267.953-20'
    );

INSERT INTO
    Cartao
VALUES
    (
        '3723 2876 8213 3436',
        'Claudia Motta',
        '5/25',
        '935',
        '635.200.100-65'
    );

INSERT INTO
    Cartao
VALUES
    (
        '6471 5304 7835 1392',
        'Paula Lopes',
        '3/25',
        '720',
        '753.654.951-31'
    );

INSERT INTO
    Cartao
VALUES
    (
        '6491 4927 8271 6718',
        'Bianca Enoca',
        '8/25',
        '798',
        '157.759.953-51'
    );

INSERT INTO
    Cartao
VALUES
    (
        '6158 2957 4382 5979',
        'Roberta Barbosa',
        '4/25',
        '964',
        '753.951.456-75'
    );

INSERT INTO
    Cartao
VALUES
    (
        '4813 7792 7884 1591',
        'Solange da Penha',
        '10/25',
        '428',
        '963.574.896-51'
    );

INSERT INTO
    Cartao
VALUES
    (
        '2453 8092 8347 5975',
        'Rubia Costa',
        '11/25',
        '819',
        '957.852.351-03'
    );

INSERT INTO
    Cartao
VALUES
    (
        '8643 9456 7570 7135',
        'Gabriela Costa',
        '12/25',
        '483',
        '963.357.167-95'
    );
/*------------------------------------*/  
/* FORNECEDOR */
/*------------------------------------*/  
INSERT INTO
    Fornecedor
VALUES
    ('Renan França', 'video games', '1000');

INSERT INTO
    Fornecedor
VALUES
    ('Gabriel Fernandes', 'video games', '1001');

INSERT INTO
    Fornecedor
VALUES
    ('Vinicius Gabriel', 'video games', '1002');

INSERT INTO
    Fornecedor
VALUES
    ('Arthur Bernard', 'video games', '1003');

INSERT INTO
    Fornecedor
VALUES
    ('Vinicius Gonçalves', 'video games', '1004');

INSERT INTO
    Fornecedor
VALUES
    ('Gustavo Ferreira', 'video games', '1005');

INSERT INTO
    Fornecedor
VALUES
    ('Marcos Vinicius', 'video games', '1006');

INSERT INTO
    Fornecedor
VALUES
    ('Lucas Tavares', 'informática', '1007');

INSERT INTO
    Fornecedor
VALUES
    ('Felipe Bart', 'informática', '1008');

INSERT INTO
    Fornecedor
VALUES
    ('Matheus Motta', 'informática', '1009');

INSERT INTO
    Fornecedor
VALUES
    ('Barbara Louyse', 'informática', '1010');

INSERT INTO
    Fornecedor
VALUES
    ('Giovana Campos', 'informática', '1011');

INSERT INTO
    Fornecedor
VALUES
    ('Ivani Silva', 'informática', '1012');

INSERT INTO
    Fornecedor
VALUES
    ('Ivanete Oliveira', 'informática', '1013');

INSERT INTO
    Fornecedor
VALUES
    ('Iracema Pereira', 'brinquedos', '1014');

INSERT INTO
    Fornecedor
VALUES
    ('Irene Gonçalves', 'brinquedos', '1015');

INSERT INTO
    Fornecedor
VALUES
    ('Iraci Nunes', 'brinquedos', '1016');

INSERT INTO
    Fornecedor
VALUES
    ('Irani Oliveira', 'brinquedos', '1017');

INSERT INTO
    Fornecedor
VALUES
    ('Julia Costa', 'brinquedos', '1018');

INSERT INTO
    Fornecedor
VALUES
    ('Elisabete Quinsan', 'brinquedos', '1019');

INSERT INTO
    Fornecedor
VALUES
    ('Caua Santos', 'brinquedos', '1020');

INSERT INTO
    Fornecedor
VALUES
    ('Isadora de Paula', 'acessórios', '1021');

INSERT INTO
    Fornecedor
VALUES
    ('Isabela Alves', 'acessórios', '1022');

INSERT INTO
    Fornecedor
VALUES
    ('Gabriel Mateus', 'acessórios', '1023');

INSERT INTO
    Fornecedor
VALUES
    ('Jean Costa', 'acessórios', '1024');

INSERT INTO
    Fornecedor
VALUES
    ('Camila Moura', 'acessórios', '1025');

INSERT INTO
    Fornecedor
VALUES
    ('Paulo Silva', 'acessórios', '1026');

INSERT INTO
    Fornecedor
VALUES
    ('Daniel Fagundes', 'acessórios', '1027');

INSERT INTO
    Fornecedor
VALUES
    ('Sabrina Fernandes', 'acessórios', '1028');

INSERT INTO
    Fornecedor
VALUES
    ('Adriana Portes', 'acessórios', '1029');
/*---------------------*/
/* PRODUTO */
/*--------------------*/
INSERT INTO
    Produto
VALUES
    (
        '0001',
        'XBOX ONE',
        'MICROSOFT',
        'CAIXA',
        3500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0002',
        'XBOX ONE S',
        'MICROSOFT',
        'CAIXA',
        2500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0003',
        'XBOX ONE X',
        'MICROSOFT',
        'CAIXA',
        4050.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0004',
        'XBOX ONE ALL DIGITAL EDITION',
        'MICROSOFT',
        'CAIXA',
        4500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0005',
        'PLAYSTATION 4',
        'SONY',
        'CAIXA',
        3500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0006',
        'PLAYSTATION 4 SLIM',
        'SONY',
        'CAIXA',
        3000.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0007',
        'PLAYSTATION 4 PRO',
        'SONY',
        'CAIXA',
        3700.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0008',
        'PLACA MÃE H110M',
        'ASUS',
        'CAIXA',
        440.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0009',
        'PLACA DE VÍDEO GEFORCE GTX 1060 6GB',
        'ASUS',
        'CAIXA',
        1099.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0010',
        'JOGO DAYS GONE',
        'SONY',
        'CD',
        75.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0011',
        'JOGO FORZA HORIZON 4',
        'MICROSOFT',
        'CD',
        85.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0012',
        'JOGO HALO: THE MASTER CHIEF COLLECTION',
        'MICROSOFT',
        'CD',
        120.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0013',
        'MEMÓRIA RAM 8GB 3000MHZ',
        'KINGSTON HYPERX',
        'PENTE',
        250.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0014',
        'MEMÓRIA RAM 16GB 3200MHZ',
        'CORSAIR',
        'PENTE',
        900.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0015',
        'PROCESSADOR INTEL CORE I5 10400F',
        'INTEL',
        'CAIXA',
        1500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0016',
        'PROCESSADOR AMD RYZEN 5 3600X',
        'AMD',
        'CAIXA',
        1500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0017',
        'ACTION FIGURE MANOPLA DO INFINITO',
        'HASBRO',
        'CAIXA',
        700.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0018',
        'ACTION FIGURE LUFFY ONE PIECE',
        'HASBRO',
        'CAIXA',
        500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0019',
        'PROCESSADOR AMD RYZEN 3 3300X',
        'AMD',
        'CAIXA',
        650.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0020',
        'PROCESSADOR INTEL CORE I3 9100F',
        'INTEL',
        'CAIXA',
        500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0021',
        'NOTEBOOK ACER ASPIRE 5',
        'ACER',
        'CAIXA',
        2950.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0022',
        'NOTEBOOK DELL INSPIRON 15',
        'DELL',
        'CAIXA',
        3500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0023',
        'COMBO TECLADO E MOUSE WIRELESS',
        'LOGITECH',
        'CAIXA',
        120.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0024',
        'XIAOMI REDMI NOTE 7',
        'XIAOMI',
        'CAIXA',
        1400.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0025',
        'SAMSUNG GALAXY NOTE 10+',
        'SAMSUNG',
        'CAIXA',
        4500.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0026',
        'APPLE IPHONE 11',
        'APPLE',
        'CAIXA',
        4119.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0027',
        'MOTOROLA MOTO G5S PLUS',
        'MOTOROLA',
        'CAIXA',
        1000.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0028',
        'GABINETE BLUECASE BG-024',
        'BLUECASE',
        'CAIXA',
        430.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0029',
        'GABINETE COOLER MASTER MASTERCASE SL600M',
        'COOLER MASTER',
        'CAIXA',
        1980.00
    );

INSERT INTO
    Produto
VALUES
    (
        '0030',
        'MOUSE HYPERX PULSEFIRE SURGE RGB',
        'KINGSTON HYPERX',
        'CAIXA',
        400.00
    );
SELECT * FROM Produto;
---------------------------------
-- PREÇO 
---------------------------------
UPDATE Produto SET Prod_preco = 3550.00
WHERE Prod_cod = '0001';

UPDATE Produto SET Prod_preco = 2550.00
WHERE Prod_cod = '0002';

UPDATE Produto SET Prod_preco = 4000.00
WHERE Prod_cod = '0003';

UPDATE Produto SET Prod_preco = 4550.00
WHERE Prod_cod = '0004';

UPDATE Produto SET Prod_preco = 3550.00
WHERE Prod_cod = '0005';

UPDATE Produto SET Prod_preco = 2850.00
WHERE Prod_cod = '0006';

UPDATE Produto SET Prod_preco = 3550.00
WHERE Prod_cod = '0007';

UPDATE Produto SET Prod_preco = 550.00
WHERE Prod_cod = '0008';

UPDATE Produto SET Prod_preco = 1000.00
WHERE Prod_cod = '0009';

UPDATE Produto SET Prod_preco = 80.00
WHERE Prod_cod = '0010';

UPDATE Produto SET Prod_preco = 70.00
WHERE Prod_cod = '0011';

UPDATE Produto SET Prod_preco = 100.00
WHERE Prod_cod = '0012';

UPDATE Produto SET Prod_preco = 550.00
WHERE Prod_cod = '0013';

UPDATE Produto SET Prod_preco = 850.00
WHERE Prod_cod = '0014';

UPDATE Produto SET Prod_preco = 1550.00
WHERE Prod_cod = '0015';

UPDATE Produto SET Prod_preco = 1650.00
WHERE Prod_cod = '0016';

UPDATE Produto SET Prod_preco = 650.00
WHERE Prod_cod = '0017';

UPDATE Produto SET Prod_preco = 550.00
WHERE Prod_cod = '0018';

UPDATE Produto SET Prod_preco = 550.00
WHERE Prod_cod = '0019';

UPDATE Produto SET Prod_preco = 550.00
WHERE Prod_cod = '0020';

UPDATE Produto SET Prod_preco = 3000.00
WHERE Prod_cod = '0021';

UPDATE Produto SET Prod_preco = 3550.00
WHERE Prod_cod = '0022';

UPDATE Produto SET Prod_preco = 100.00
WHERE Prod_cod = '0023';

UPDATE Produto SET Prod_preco = 1450.00
WHERE Prod_cod = '0024';

UPDATE Produto SET Prod_preco = 4050.00
WHERE Prod_cod = '0025';

UPDATE Produto SET Prod_preco = 4550.00
WHERE Prod_cod = '0026';

UPDATE Produto SET Prod_preco = 950.00
WHERE Prod_cod = '0027';

UPDATE Produto SET Prod_preco = 450.00
WHERE Prod_cod = '0028';

UPDATE Produto SET Prod_preco = 1950.00
WHERE Prod_cod = '0029';

UPDATE Produto SET Prod_preco = 550.00
WHERE Prod_cod = '0020';
--------------------------------------
-- VENDA --
--------------------------------------
Insert into Venda VALUES ('5656', 4000.00, 'dinheiro', '957.852.351-03', '0004');

INSERT INTO
    Venda
VALUES
    (
        '0002',
        120,
        'dinheiro',
        '354.957.786-59',
        '0010'
    );

INSERT INTO
    Venda
VALUES
    (
        '0022',
        340,
        'dinheiro',
        '963.357.167-95',
        '0002'
    );

INSERT INTO
    Venda
VALUES
    (
        '0202',
        580,
        'cartao debito',
        '957.852.351-03',
        '0003'
    );

INSERT INTO
    Venda
VALUES
    (
        '0502',
        600,
        'dinheiro',
        '354.957.786-69',
        '0004'
    );

INSERT INTO
    Venda
VALUES
    (
        '0102',
        2000,
        'cartao credito',
        '963.574.896-51',
        '0005'
    );

INSERT INTO
    Venda
VALUES
    (
        '0802',
        850,
        'dinheiro',
        '753.951.456-75',
        '0006'
    );

INSERT INTO
    Venda
VALUES
    (
        '0402',
        290,
        'dinheiro',
        '157.759.953-51',
        '0007'
    );

INSERT INTO
    Venda
VALUES
    (
        '7002',
        320,
        'cartao debito',
        '753.654.951-31',
        '0008'
    );

INSERT INTO
    Venda
VALUES
    (
        '9002',
        500,
        'cartao credito',
        '635.200.100-65',
        '0009'
    );

INSERT INTO
    Venda
VALUES
    (
        '6002',
        050,
        'cartao debito',
        '354.267.953-20',
        '0001'
    );

INSERT INTO
    Venda
VALUES
    (
        '5002',
        020,
        'dinheiro',
        '951.486.325-78',
        '0029'
    );

INSERT INTO
    Venda
VALUES
    (
        '4002',
        010,
        'cartao debito',
        '957.826.642-55',
        '0028'
    );

INSERT INTO
    Venda
VALUES
    (
        '3002',
        090,
        'dinheiro',
        '320.120.520-95',
        '0027'
    );

INSERT INTO
    Venda
VALUES
    (
        '2002',
        1850,
        'dinheiro',
        '954.851.365-54',
        '0026'
    );

INSERT INTO
    Venda
VALUES
    (
        '1111',
        1999,
        'cartao credito',
        '359.963.321-47',
        '0025'
    );

INSERT INTO
    Venda
VALUES
    (
        '9999',
        200,
        'dinheiro',
        '533.266.987-51',
        '0024'
    );

INSERT INTO
    Venda
VALUES
    (
        '0052',
        369,
        'dinheiro',
        '159.753.856-91',
        '0023'
    );

INSERT INTO
    Venda
VALUES
    (
        '0012',
        770,
        'dinheiro',
        '954.786.321-59',
        '0022'
    );

INSERT INTO
    Venda
VALUES
    (
        '0511',
        2999,
        'dinheiro',
        '321.456.987-03',
        '0021'
    );

INSERT INTO
    Venda
VALUES
    (
        '0902',
        870,
        'cartao credito',
        '357.895.654-26',
        '0020'
    );

INSERT INTO
    Venda
VALUES
    (
        '0803',
        025,
        'dinheiro',
        '365.412.399-87',
        '0011'
    );

INSERT INTO
    Venda
VALUES
    (
        '0003',
        060,
        'dinheiro',
        '365.489.951-78',
        '0012'
    );

INSERT INTO
    Venda
VALUES
    (
        '0004',
        080,
        'cartao debito',
        '369.852.147-07',
        '0013'
    );

INSERT INTO
    Venda
VALUES
    (
        '0005',
        135,
        'dinheiro',
        '951.236.654-45',
        '0014'
    );

INSERT INTO
    Venda
VALUES
    (
        '0006',
        120,
        'cartao debito',
        '359.654.120-23',
        '0015'
    );

INSERT INTO
    Venda
VALUES
    (
        '0007',
        550,
        'dinheiro',
        '156.456.878-99',
        '0016'
    );

INSERT INTO
    Venda
VALUES
    (
        '0008',
        479,
        'dinheiro',
        '965.896.589-65',
        '0017'
    );

INSERT INTO
    Venda
VALUES
    (
        '0009',
        269,
        'cartao credito',
        '159.756.421.02',
        '0018'
    );

INSERT INTO
    Venda
VALUES
    (
        '0010',
        019,
        'dinheiro',
        '159.356.489-97',
        '0030'
    );

INSERT INTO
    Venda
VALUES
    (
        '0011',
        025,
        'dinheiro',
        '365.489.987-98',
        '0019'
    );
    
--------------------------------
-- PRODUTO FORNECEDOR
--------------------------------
insert into produto_fornecedor values ('0020','1002');
insert into produto_fornecedor values ('0010','1002');
insert into produto_fornecedor values ('0008','1002');
insert into produto_fornecedor values ('0009','1002');
insert into produto_fornecedor values ('0007','1002');
insert into produto_fornecedor values ('0006','1002');
insert into produto_fornecedor values ('0020','1001');
insert into produto_fornecedor values ('0010','1001');
insert into produto_fornecedor values ('0008','1001');
insert into produto_fornecedor values ('0009','1001');
insert into produto_fornecedor values ('0007','1001');
insert into produto_fornecedor values ('0006','1001');
insert into produto_fornecedor values ('0005','1005');
insert into produto_fornecedor values ('0022','1002');
insert into produto_fornecedor values ('0023','1002');
insert into produto_fornecedor values ('0022','1003');
insert into produto_fornecedor values ('0025','1003');
insert into produto_fornecedor values ('0026','1003');
insert into produto_fornecedor values ('0028','1003');
insert into produto_fornecedor values ('0009','1004');
insert into produto_fornecedor values ('0008','1004');
INSERT into Produto_fornecedor values ('0001','1000');
INSERT into Produto_fornecedor values ('0002','1001');
INSERT into Produto_fornecedor values ('0003','1002');
INSERT into Produto_fornecedor values ('0004','1023');
INSERT into Produto_fornecedor values ('0005','1003');
INSERT into Produto_fornecedor values ('0006','1004');
INSERT into Produto_fornecedor values ('0007','1005');
INSERT into Produto_fornecedor values ('0008','1007');
INSERT into Produto_fornecedor values ('0009','1008');
INSERT into Produto_fornecedor values ('0010','1021');
INSERT into Produto_fornecedor values ('0011','1022');
INSERT into Produto_fornecedor values ('0012','1029');
INSERT into Produto_fornecedor values ('0013','1009');
INSERT into Produto_fornecedor values ('0014','1010');
INSERT into Produto_fornecedor values ('0015','1011');
INSERT into Produto_fornecedor values ('0016','1012');
INSERT into Produto_fornecedor values ('0017','1014');
INSERT into Produto_fornecedor values ('0018','1015');
INSERT into Produto_fornecedor values ('0019','1013');
INSERT into Produto_fornecedor values ('0020','1024');
INSERT into Produto_fornecedor values ('0021','1025');
INSERT into Produto_fornecedor values ('0022','1026');
INSERT into Produto_fornecedor values ('0023','1027');
INSERT into Produto_fornecedor values ('0024','1028');
INSERT into Produto_fornecedor values ('0025','1006');
INSERT into Produto_fornecedor values ('0026','1016');
INSERT into Produto_fornecedor values ('0027','1017');
INSERT into Produto_fornecedor values ('0028','1018');
INSERT into Produto_fornecedor values ('0029','1019');
INSERT into Produto_fornecedor values ('0030','1020');
---------------------------
-- PRODUTO_VENDA
---------------------------
INSERT INTO
    Produto_venda
VALUES
    ('0010', '0002', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0002', '0022', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0003', '0202', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0004', '0502', 02);

INSERT INTO
    Produto_venda
VALUES
    ('0005', '0102', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0006', '0802', 02);

INSERT INTO
    Produto_venda
VALUES
    ('0007', '0402', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0008', '7002', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0009', '9002', 03);

INSERT INTO
    Produto_venda
VALUES
    ('0001', '6002', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0029', '5002', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0028', '4002', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0027', '3002', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0026', '2002', 02);

INSERT INTO
    Produto_venda
VALUES
    ('0025', '1111', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0024', '9999', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0023', '0052', 02);

INSERT INTO
    Produto_venda
VALUES
    ('0022', '0012', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0021', '0511', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0020', '0902', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0011', '0803', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0012', '0003', 04);

INSERT INTO
    Produto_venda
VALUES
    ('0013', '0004', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0014', '0005', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0015', '0006', 03);

INSERT INTO
    Produto_venda
VALUES
    ('0016', '0007', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0017', '0008', 01);

INSERT INTO
    Produto_venda
VALUES
    ('0018', '0009', 02);

INSERT INTO
    Produto_venda
VALUES
    ('0030', '0010', 02);

INSERT INTO
    Produto_venda
VALUES
    ('0019', '0011', 01);
    
-----------------------------
-- HISTORICO_VENDA
-----------------------------
INSERT INTO
    Historico_venda
VALUES
    ('01/06/2020', '0002');

INSERT INTO
    Historico_venda
VALUES
    ('02/06/2020', '0022');

INSERT INTO
    Historico_venda
VALUES
    ('03/06/2020', '0202');

INSERT INTO
    Historico_venda
VALUES
    ('04/06/2020', '0502');

INSERT INTO
    Historico_venda
VALUES
    ('05/06/2020', '0102');

INSERT INTO
    Historico_venda
VALUES
    ('06/06/2020', '0802');

INSERT INTO
    Historico_venda
VALUES
    ('07/06/2020', '0402');

INSERT INTO
    Historico_venda
VALUES
    ('08/06/2020', '7002');

INSERT INTO
    Historico_venda
VALUES
    ('09/06/2020', '9002');

INSERT INTO
    Historico_venda
VALUES
    ('10/06/2020', '6002');

INSERT INTO
    Historico_venda
VALUES
    ('11/06/2020', '5002');

INSERT INTO
    Historico_venda
VALUES
    ('12/06/2020', '4002');

INSERT INTO
    Historico_venda
VALUES
    ('13/06/2020', '3002');

INSERT INTO
    Historico_venda
VALUES
    ('14/06/2020', '2002');

INSERT INTO
    Historico_venda
VALUES
    ('15/06/2020', '1111');

INSERT INTO
    Historico_venda
VALUES
    ('16/06/2020', '9999');

INSERT INTO
    Historico_venda
VALUES
    ('17/06/2020', '0052');

INSERT INTO
    Historico_venda
VALUES
    ('18/06/2020', '0012');

INSERT INTO
    Historico_venda
VALUES
    ('19/06/2020', '0511');

INSERT INTO
    Historico_venda
VALUES
    ('20/06/2020', '0902');

INSERT INTO
    Historico_venda
VALUES
    ('21/06/2020', '0803');

INSERT INTO
    Historico_venda
VALUES
    ('22/06/2020', '0003');

INSERT INTO
    Historico_venda
VALUES
    ('23/06/2020', '0004');

INSERT INTO
    Historico_venda
VALUES
    ('24/06/2020', '0005');

INSERT INTO
    Historico_venda
VALUES
    ('25/06/2020', '0006');

INSERT INTO
    Historico_venda
VALUES
    ('26/06/2020', '0007');

INSERT INTO
    Historico_venda
VALUES
    ('27/06/2020', '0008');

INSERT INTO
    Historico_venda
VALUES
    ('28/06/2020', '0009');

INSERT INTO
    Historico_venda
VALUES
    ('29/06/2020', '0010');

INSERT INTO
    Historico_venda
VALUES
    ('30/06/2020', '0011');
  
------------------------------------------ TRIGGERS ------------------------------------------

--Trigger que salva o histórico do preço--

CREATE OR REPLACE TRIGGER trigger_preco AFTER UPDATE ON Produto
FOR EACH ROW
BEGIN

    INSERT INTO Preco_Historico(prod_cod, preco_data, Prod_preco) VALUES (:old.Prod_cod, SYSDATE, :new.prod_preco);

END;

select * from preco_historico;

--Trigger que salva o histórico de venda--

create or replace trigger
    INSERT_HISTORICO_VENDA
    after insert on Venda
    FOR EACH ROW
    BEGIN
        insert into Historico_venda values(sysdate, :NEW.cod_venda);
    END;
	
	select * from historico_venda;

------------------------------------------ CONSULTAS ------------------------------------------
	
/*1º-Pegar o histórico de valores do produto 0001*/
SELECT
    prod_cod "Código",
    preco_data "Última data do valor",
    valor "Valor"
FROM
    preco
WHERE
    prod_cod = '0001';

/*2º-Pegar os Produtos cujo valor já foi menor que 5000*/
SELECT
    produto.prod_nome "Produto",
    preco.preco_data "Última data do Valor",
    preco.valor "Valor"
FROM
    produto
    INNER JOIN preco ON produto.prod_cod = preco.prod_cod
    AND preco.valor <= 5000;

/*3º-Selecionar a quantidade de forncedores por categoria e o total*/
SELECT
    forn_categoria "Categoria",
    count(forn_categoria) "Quantidade"
FROM
    fornecedor
GROUP BY
    rollup(forn_categoria);

/*4º-Selecionar todos os produtos cuja unidade de medida seja CD e seus respectivos valores*/
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

/*5º-Selecionar os valores atualizados de todos os produtos*/
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

/*6º-Listas os clientes e seus respectivos cartões*/
SELECT
    cartao.car_numero,
    cartao.car_data,
    cliente.cli_nome,
    cliente.cli_cpf_cnpj
FROM
    cartao
    RIGHT JOIN cliente ON cartao.cpf_cnpj = cliente.cli_cpf_cnpj;

/*7º-Selecionar o total de salário por cargo de funcionário e o total a ser pago no fim do mês*/
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

/*8º-Selecionar o valor total das vendas filtrando pelo método de pagamento e cujo valor total seja maior que 20000*/
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
	
/*9º-View que mostra valores não sigilosos do funcionario*/
CREATE VIEW view_funcionario AS
SELECT Func_CPF_CNPJ, Func_nome, Func_email, Func_cargo FROM Funcionario;

SELECT * FROM view_funcionario;

/*10º-View que consulta a quantidade de produtos por marca*/
CREATE OR REPLACE VIEW produto_marca AS
SELECT PROD_MARCA, COUNT(PROD_COD)"QUANTIDADE" FROM PRODUTO
GROUP BY ROLLUP(PROD_MARCA);

SELECT * FROM produto_marca;

/*11º-View que une as informações do cliente e do cartão*/

CREATE OR REPLACE VIEW cliente_cartao AS
SELECT c.cli_nome, c.cli_email, c.cli_CPF_CNPJ, ct.car_numero, ct.car_data
FROM cliente c INNER JOIN cartao ct ON c.cli_CPF_CNPJ = ct.CPF_CNPJ;

SELECT * FROM cliente_cartao;

/*12º-View que pega o valor total de produtos por marca*/

CREATE OR REPLACE VIEW valor_total_marca AS
SELECT PROD_MARCA, SUM(PROD_PRECO)"VALOR TOTAL" FROM Produto
GROUP BY (PROD_MARCA);

SELECT * FROM valor_total_marca;

/*13º-View que mostra quantos itens foram comprados no total baseado nas formas de pagamentos*/

CREATE OR REPLACE VIEW quantidade_forma_pgto AS
SELECT forma_pgto_venda, COUNT(cod_venda)"Quantidade" FROM Venda
GROUP BY ROLLUP(forma_pgto_venda);

select * from quantidade_forma_pgto;

/*14º-View que mostra a quantidade de vezes que um produto foi vendido*/

CREATE OR REPLACE VIEW quantidade_prod_vendido AS
SELECT v.Prod_cod, p.Prod_nome, count(v.prod_cod)"Quantidade"
FROM venda v INNER JOIN produto p ON v.prod_cod = p.prod_cod
GROUP BY (v.prod_cod, p.prod_nome);

SELECT * FROM quantidade_prod_vendido;

/*15º-View que une 3 tabelas e mostra os dados do fornecedor e do produto*/

CREATE OR REPLACE VIEW fornecedor_produto AS
SELECT pf.forn_cod, f.forn_nome, f.forn_categoria, p.prod_nome
FROM produto p, fornecedor f, produto_fornecedor pf
WHERE p.prod_cod = pf.prod_cod AND pf.forn_cod = f.forn_cod
GROUP BY (pf.forn_cod, f.forn_nome, f.forn_categoria, p.prod_nome)
ORDER BY (pf.forn_cod);

SELECT * FROM fornecedor_produto;