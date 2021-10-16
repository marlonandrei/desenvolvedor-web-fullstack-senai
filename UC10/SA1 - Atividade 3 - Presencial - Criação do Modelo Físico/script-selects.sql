use copa_mundo;


select
selecao,nome
from jogador
left join pais on pais.idpais = jogador.pais_idpais
where situacao = 'T'
order by selecao, nome;


select
	selecao,
    nome,
    count(Jogador_idJogador_sai) as substituicoes
from jogador
left join pais on pais.idpais = jogador.pais_idpais
right join substituicao on substituicao.Jogador_idJogador_sai = jogador.idJogador
group by
	selecao,
    nome
order by 
	selecao,
    nome;


select 
	selecao,
    sum(amarelo) as amarelo,
    sum(vermelho) as vermelho
from cartao
left join jogador on jogador.idjogador = cartao.Jogador_idjogador
left join pais on pais.idpais = jogador.pais_idpais
group by
	selecao
order by 
	selecao;

select * from pais;



select  
  grupo_idgrupo as grupo,
  selecao,
  pontos,
  vitorias,
  empates,
  derrotas,
  golspro-golscontra as saldo_gols
from pais
order by 
grupo_idgrupo,
pontos
desc;

/* ******************************************* */
select 
  *
from 
(
	select  
	  grupo_idgrupo as grupo,
	  selecao,
	  pontos,
	  vitorias,
	  empates,
	  derrotas,
	  golspro-golscontra as saldo_gols
	from pais
	where grupo_idgrupo ='A'
	order by 
	grupo_idgrupo,
	pontos
    desc
	limit 2
) VW

union

select 
  *
from 
(
	select  
	  grupo_idgrupo as grupo,
	  selecao,
	  pontos,
	  vitorias,
	  empates,
	  derrotas,
	  golspro-golscontra as saldo_gols
	from pais
	where grupo_idgrupo ='B'
	order by 
	grupo_idgrupo,
	pontos
    desc
	limit 2
) VW

union

select 
  *
from 
(
	select  
	  grupo_idgrupo as grupo,
	  selecao,
	  pontos,
	  vitorias,
	  empates,
	  derrotas,
	  golspro-golscontra as saldo_gols
	from pais
	where grupo_idgrupo ='C'
	order by 
	grupo_idgrupo,
	pontos
    desc
	limit 2
) VW

union

select 
  *
from 
(
	select  
	  grupo_idgrupo as grupo,
	  selecao,
	  pontos,
	  vitorias,
	  empates,
	  derrotas,
	  golspro-golscontra as saldo_gols
	from pais
	where grupo_idgrupo ='D'
	order by 
	grupo_idgrupo,
	pontos
    desc
	limit 2
) VW;




