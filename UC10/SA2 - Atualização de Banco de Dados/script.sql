
alter table jogador add column distancia int;
alter table jogador add column saltos int;
alter table jogador add column giros int;
alter table jogador add column impactos int;

/* Para checar se as colunas foram criadas */
select * from jogador;

update jogador
set distancia= 23472,saltos=17,giros=11,impactos=5
where idjogador=2240;

update jogador
set distancia=27639,saltos=22,giros=7,impactos=3
where idjogador=2245;

update jogador
set distancia= 29581,saltos=15,giros=5,impactos=9
where idjogador=2345;

update jogador
set distancia= 26384,saltos=25,giros=15,impactos=7
where idjogador=2335;

update jogador
set distancia= 23891,saltos=10,giros=12,impactos=11
where idjogador=2540;

update jogador
set distancia= 18632,saltos=16,giros=18,impactos=2
where idjogador=2625;

update jogador
set distancia= 25864,saltos=31,giros=15,impactos=7
where idjogador=2640;

update jogador
set distancia= 30640,saltos=121,giros=21,impactos=3
where idjogador=2645;

update jogador
set distancia= 28751,saltos=13,giros=17,impactos=8
where idjogador=2725;

update jogador
set distancia= 31472,saltos=7,giros=4,impactos=10
where idjogador=2845;

update jogador
set distancia= 247852,saltos=18,giros=11,impactos=6
where idjogador=3140;

update jogador
set distancia= 28378,saltos=5,giros=12,impactos=4
where idjogador=3225;

update jogador
set distancia= 30219,saltos=33,giros=20,impactos=2
where idjogador=3230;

update jogador
set distancia= 15875,saltos=19,giros=3,impactos=5
where idjogador=3435;

update jogador
set distancia= 25851,saltos=8,giros=9,impactos=8
where idjogador=3450;

create view vw_jogadores as
select
selecao as pais,
nome as jogador,
distancia,
saltos,
giros,
impactos
from jogador
left join pais on pais.idpais=jogador.pais_idpais
where distancia is not null
order by selecao, distancia desc;

/* Para testar a view criada  */
select * from vw_jogadores;
