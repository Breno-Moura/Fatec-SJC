insert into autor values (1,'Caetano Veloso');
insert into autor values (2,'Ana Carolina');
insert into autor values (3,'Nando Reis');
insert into autor values (4,'Edi Mota');
insert into autor values (5,'Elis Regina');

insert into musica values (1,'Alegria Alegria',50);
insert into musica values (2,'Quem de nós dois',50);
insert into musica values (3,'É isso aí',50);
insert into musica values (4,'Por Onde Andei',45);
insert into musica values (5,'Fora da Lei',60);
insert into musica values (6,'Maria Maria',60);
insert into musica values (7,'Andança',60);

insert into CD_CATEGORIA values (1,5,10);
insert into CD_CATEGORIA values (2,11,20);
insert into CD_CATEGORIA values (3,21,30);


insert into gravadora values (1,'sony','a','222','joao','www.a.com.br');
insert into gravadora values (2,'eletronic','b','223','jose','www.b.com.br');
insert into gravadora values (3,'teste','b','223','jose','www.b.com.br');

insert into cd values (1,'CD1',10,sysdate,1,null);
insert into cd values (2,'CD2',12,sysdate,2,1);
insert into cd values (3,'CD3',20.00,sysdate,1,null);
insert into cd values (4,'CD4',90,sysdate,2,null);
insert into cd values (5,'CD5',85,sysdate,3,null);
insert into cd values (6,'CD6',200,'01-may-2015',3,null);
insert into cd values (7,'CD7',15,sysdate,3,null);
insert into cd values (8,'CD8',18,sysdate,3,null);
insert into cd values (9,'CD9',20,sysdate,3,null);
insert into cd values (10,'CD10',10,sysdate,3,null);
insert into cd values (11,'CD11',8.50,sysdate,3,null);
insert into cd values (12,'CD12',12.50,sysdate,3,null);
insert into cd values (13,'CD13',15,sysdate,3,null);
insert into cd values (14,'CD14',15,sysdate,3,null);
insert into cd values (15,'CD15',10,sysdate,3,null);
insert into cd values (16,'CD16',9,sysdate,3,null);


insert into faixa values (1,6,1);
insert into faixa values (1,7,2);


insert into autor_musica values (5,6);
insert into autor_musica values (5,7);
insert into autor_musica values (1,1);
insert into autor_musica values (3,3);

commit;