update GRENAIS set Estadio = 'Centenário Caxias do Sul' where Estadio = 'Centenário'
update GRENAIS set Estadio = 'Centenário Caxias do Sul' where Estadio = 'Estádio'
update GRENAIS SET Estadio = 'Estádio da Chácara das Camélias' WHERE Estadio = 'Campo do Porto Alegre'
UPDATE GRENAIS SET Competicao = 'Torneio Roberto Gomes Pedrosa' WHERE Competicao = 'Campeonato Brasileiro' AND YEAR(Data) >= 1967 AND YEAR(Data) <= 1970

/*usa os grenais das tabelas do transfermarket pois elas tem mais dados*/

INSERT INTO game (idChampionship, idStadium, idTeamHome, idReferee, scoreTeamHome, penaltiesScoreTeamHome, penaltiesScoreTeamAway, scoreTeamAway, idTeamAway, gameDate, source)
SELECT 
	idChampionship,
	idStadium, 
	idTeamHome,
	idReferee,
	scoreTeamHome,
	penaltiesScoreTeamHome,
	penaltiesScoreTeamAway,
	scoreTeamAway,
	idTeamAway,
	gameDate,
	source
FROM VW_GRENAIS
where not exists (select 1
					from VW_TRANSFERMARKET_CDB cdb 
				   where cdb.idTeamHome = VW_GRENAIS.idTeamHome 
				   and cdb.idTeamAway = VW_GRENAIS.idTeamAway
				   and cdb.gameDate = VW_GRENAIS.gameDate)
  and not exists (select 1
					from VW_TRANSFERMARKET_BR br 
				   where br.idTeamHome = VW_GRENAIS.idTeamHome 
				   and br.idTeamAway = VW_GRENAIS.idTeamAway
				   and br.gameDate = VW_GRENAIS.gameDate)
