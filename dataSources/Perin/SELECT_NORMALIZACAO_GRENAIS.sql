update GRENAIS set Estadio = 'Centen�rio Caxias do Sul' where Estadio = 'Centen�rio'
update GRENAIS set Estadio = 'Centen�rio Caxias do Sul' where Estadio = 'Est�dio'
update GRENAIS SET Estadio = 'Est�dio da Ch�cara das Cam�lias' WHERE Estadio = 'Campo do Porto Alegre'
UPDATE GRENAIS SET Competicao = 'Torneio Roberto Gomes Pedrosa' WHERE Competicao = 'Campeonato Brasileiro' AND YEAR(Data) >= 1967 AND YEAR(Data) <= 1970

INSERT INTO game (idChampionship, idStadium, idTeamHome, scoreTeamHome, penaltiesScoreTeamHome, penaltiesScoreTeamAway, scoreTeamAway, idTeamAway, gameDate, source)
SELECT 
	CASE 
		WHEN Competicao = 'Amistoso' THEN 'AMISTOSO'
		WHEN Competicao = 'Seletiva Pr�-Libertadores' THEN CAST(YEAR(data) AS VARCHAR(4))+'_SLA'
		WHEN Competicao = 'Campeonato Ga�cho' THEN CAST(YEAR(data) AS VARCHAR(4))+'_RS'
		WHEN Competicao = 'Gauch�o' THEN CAST(YEAR(data) AS VARCHAR(4))+'_RS'
		WHEN Competicao = 'Gauch�o/Primeira Liga' THEN CAST(YEAR(data) AS VARCHAR(4))+'_RS'
		WHEN Competicao = 'Citadino' THEN CAST(YEAR(data) AS VARCHAR(4))+'_CIT'
		WHEN Competicao = 'Copa do Brasil' THEN CAST(YEAR(data) AS VARCHAR(4))+'_CDB'
		WHEN Competicao = 'Copa Libertadores' THEN CAST(YEAR(data) AS VARCHAR(4))+'_LA'
		WHEN Competicao = 'Campeonato Brasileiro' THEN CAST(YEAR(data) AS VARCHAR(4))+'_BR'
		WHEN Competicao = 'Torneio Roberto Gomes Pedrosa' THEN CAST(YEAR(data) AS VARCHAR(4))+'_RGP'
		WHEN Competicao = 'Copa Sul' THEN CAST(YEAR(data) AS VARCHAR(4))+'_CSUL'
		WHEN Competicao = 'Copa Sul-Minas' THEN CAST(YEAR(data) AS VARCHAR(4))+'_CSM'
		WHEN Competicao = 'Copa Sul-Americana' THEN CAST(YEAR(data) AS VARCHAR(4))+'_CSA'
		WHEN Competicao = 'Torneio da Legalidade' THEN CAST(YEAR(data) AS VARCHAR(4))+'_CSB'		
	END idChampionship,
	(SELECT MAX(ID) FROM stadium WHERE UPPER(NAME) LIKE UPPER(TRIM(GRENAIS.Estadio)) or UPPER(nickname) LIKE UPPER(TRIM(GRENAIS.Estadio))) idStadium, 
	(SELECT MAX(ID) FROM team WHERE UPPER(NAME) LIKE UPPER(Mandante)) idTeamHome,
	GolsMandante scoreTeamHome,
	PenaltisMandante penaltiesScoreTeamHome,
	PenaltisVisitante penaltiesScoreTeamAway,
	GolsVisitante scoreTeamAway,
	(SELECT MAX(ID) FROM team WHERE UPPER(NAME) LIKE UPPER(Visitante)) idTeamAway,
	Data gameDate,
	'Perin-Grenais' source
  FROM GRENAIS

