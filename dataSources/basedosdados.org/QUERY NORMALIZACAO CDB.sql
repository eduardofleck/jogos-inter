update [TRANSFERMARKET_CDB] set estadio = 'Estádio Cícero Pompeu de Toledo' where estadio = 'MorumBIS'
update [TRANSFERMARKET_CDB] set estadio = 'Estádio Frei Epifânio DAbadia' where estadio = 'Estádio Frei Epifânio D''Abadia'
update [TRANSFERMARKET_CDB] set estadio = 'Estádio Rafael Seabra' where estadio is null and time_mandante = 'Tuntum'
update [TRANSFERMARKET_CDB] set time_mandante = 'Cuiabá' where time_mandante = 'Cuiabá-MT'
update [TRANSFERMARKET_CDB] set time_visitante = 'Cuiabá' where time_visitante = 'Cuiabá-MT'
update [TRANSFERMARKET_CDB] set time_mandante = 'Moto Club' where time_mandante = 'Moto Club-MA'
update [TRANSFERMARKET_CDB] set time_visitante = 'Moto Club' where time_visitante = 'Moto Club-MA'
update [TRANSFERMARKET_CDB] set time_mandante = 'Nova Iguaçu' where time_mandante = 'Nova Iguaçu-RJ'
update [TRANSFERMARKET_CDB] set time_visitante = 'Nova Iguaçu' where time_visitante = 'Nova Iguaçu-RJ'
update [TRANSFERMARKET_CDB] set time_mandante = 'Paysandu SC' where time_mandante = 'Paysandu'
update [TRANSFERMARKET_CDB] set time_visitante = 'Paysandu SC' where time_visitante = 'Paysandu'
update [TRANSFERMARKET_CDB] set time_mandante = 'Portuguesa' where time_mandante = 'Portuguesa-SP'
update [TRANSFERMARKET_CDB] set time_visitante = 'Portuguesa' where time_visitante = 'Portuguesa-SP'
update [TRANSFERMARKET_CDB] set time_mandante = 'Cascavel' where time_mandante = 'Cascavel-PR'
update [TRANSFERMARKET_CDB] set time_visitante = 'Cascavel' where time_visitante = 'Cascavel-PR'


INSERT INTO game (iDChampionship, idRound, gameDate, idStadium, attendance, idTeamHome, idTeamAway, scoreTeamHome, scoreTeamAway, hasPenalties, penaltiesScoreTeamHome, penaltiesScoreTeamAway, createddate, source)
SELECT [iDChampionship]
      ,[idRound]
      ,[gameDate]
      ,[idStadium]
      ,[attendance]
      ,[idTeamHome]
      ,[idTeamAway]
      ,[scoreTeamHome]
      ,[scoreTeamAway]
      ,[hasPenalties]
      ,[penaltiesScoreTeamHome]
      ,[penaltiesScoreTeamAway]
      ,[createddate]
      ,[source]
  FROM [INTER].[dbo].[VW_TRANSFERMARKET_CDB]
