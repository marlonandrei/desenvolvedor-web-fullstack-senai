use copa_mundo;

/* Nome de todos os jogadores titulares, por seleção; */
select selecao, nome from Jogador
left join Pais on Pais.idPais = Jogador.Pais_idPais;

/* Seleção, o nome do jogador e número de vezes que ele foi substituído; */
select 
	selecao, 
    nome, 
    count(substituicao.Jogador_idJogador_sai) as substituicoes
from Jogador
left join Pais on Pais.idPais = Jogador.Pais_idPais
left join substituicao on substituicao.Jogador_idJogador_sai = Jogador.idJogador
group by selecao, nome;

/* Número total de cartões amarelos e vermelhos por seleção; */
select 
	selecao, 
    count(Cartao.amarelo) as amarelo,
    count(Cartao.vermelho) as vermelho
from Jogador
left join Pais on Pais.idPais = Jogador.Pais_idPais
left join Cartao on Cartao.Jogador_idJogador = Jogador.idJogador
group by 
	selecao;

/* 
	Tabela de pontuação ordenada por grupo de forma decrescente por pontuação (vitória 3 pontos, empate 1 ponto), utilizando como critérios de desempate, o saldo de gols. A tabela deve exibir grupo, seleção, pontuação, número de vitórias, número de empates, número de derrotas e saldo de gols (gols pró - gols contra).  
	Observação: classificam para a segunda fase somente as duas primeiras seleções de cada grupo.
*/ 
select 
	Grupo_idGrupo,
    selecao,
    sum(pontos) as pontos,
    sum(vitorias) as vitorias,
    sum(empates) as empates,
    sum(derrotas) as derrotas,
    sum(saldo_gols) as saldo_gols
from     
(
	select
		Pais.Grupo_idGrupo,
		Pais.selecao,
		case 
			when gols_idpais_1 > gols_idpais_2 then 3
			when gols_idpais_2 = gols_idpais_1 then 1
			else 0
		end as pontos,
		case 
			when gols_idpais_1 > gols_idpais_2 then 1
			else 0
		end as vitorias,
		case 
			when gols_idpais_1 = gols_idpais_2 then 1
			else 0
		end as empates,
		case 
			when gols_idpais_1 < gols_idpais_2 then 1
			else 0
		end as derrotas,
		gols_idpais_1 - gols_idpais_2 as saldo_gols 
	from Jogos
	left join Pais on Pais.idPais = Jogos.Pais_idPais_1

	union

	select
		Pais.Grupo_idGrupo,
		Pais.selecao,
		case 
			when gols_idpais_2 > gols_idpais_1 then 3
			when gols_idpais_2 = gols_idpais_1 then 1
			else 0
		end as pontos,
		case 
			when gols_idpais_2 > gols_idpais_1 then 1
			else 0
		end as vitorias,
		case 
			when gols_idpais_1 = gols_idpais_2 then 1
			else 0
		end as empates,
		case 
			when gols_idpais_2 < gols_idpais_1 then 1
			else 0
		end as derrotas,
		gols_idpais_2 - gols_idpais_1 as saldo_gols 
	from Jogos
	left join Pais on Pais.idPais = Jogos.Pais_idPais_2
) VW
group by
	Grupo_idGrupo,
    selecao
order by 
	Grupo_idGrupo,
    selecao;
