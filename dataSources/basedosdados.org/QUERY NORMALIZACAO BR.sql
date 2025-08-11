update [TRANSFERMARKET_BR] set estadio = 'Est�dio C�cero Pompeu de Toledo' where estadio = 'MorumBIS'
update [TRANSFERMARKET_BR] set estadio = 'Est�dio Frei Epif�nio DAbadia' where estadio = 'Est�dio Frei Epif�nio D''Abadia'
update [TRANSFERMARKET_BR] set estadio = 'Est�dio Rafael Seabra' where estadio is null and time_mandante = 'Tuntum'
update [TRANSFERMARKET_BR] set time_mandante = 'Cuiab�' where time_mandante = 'Cuiab�-MT'
update [TRANSFERMARKET_BR] set time_visitante = 'Cuiab�' where time_visitante = 'Cuiab�-MT'
update [TRANSFERMARKET_BR] set time_mandante = 'Moto Club' where time_mandante = 'Moto Club-MA'
update [TRANSFERMARKET_BR] set time_visitante = 'Moto Club' where time_visitante = 'Moto Club-MA'
update [TRANSFERMARKET_BR] set time_mandante = 'Nova Igua�u' where time_mandante = 'Nova Igua�u-RJ'
update [TRANSFERMARKET_BR] set time_visitante = 'Nova Igua�u' where time_visitante = 'Nova Igua�u-RJ'
update [TRANSFERMARKET_BR] set time_mandante = 'Paysandu SC' where time_mandante = 'Paysandu'
update [TRANSFERMARKET_BR] set time_visitante = 'Paysandu SC' where time_visitante = 'Paysandu'
update [TRANSFERMARKET_BR] set time_mandante = 'Portuguesa' where time_mandante = 'Portuguesa-SP'
update [TRANSFERMARKET_BR] set time_visitante = 'Portuguesa' where time_visitante = 'Portuguesa-SP'
update [TRANSFERMARKET_BR] set time_mandante = 'Cascavel' where time_mandante = 'Cascavel-PR'
update [TRANSFERMARKET_BR] set time_visitante = 'Cascavel' where time_visitante = 'Cascavel-PR'
update [TRANSFERMARKET_BR] set time_mandante = 'Santos FC' where time_mandante = 'Santos'
update [TRANSFERMARKET_BR] set time_visitante = 'Santos FC' where time_visitante = 'Santos'
update [TRANSFERMARKET_BR] set time_mandante = 'Goi�s EC' where time_mandante = 'Goi�s'
update [TRANSFERMARKET_BR] set time_visitante = 'Goi�s EC' where time_visitante = 'Goi�s'


INSERT INTO game (iDChampionship, idRound, gameDate, idStadium, attendance, idTeamHome, idTeamAway, scoreTeamHome, scoreTeamAway, createddate, source)
SELECT [iDChampionship]
      ,[idRound]
      ,[gameDate]
      ,[idStadium]
      ,[attendance]
      ,[idTeamHome]
      ,[idTeamAway]
      ,[scoreTeamHome]
      ,[scoreTeamAway]
      ,[createddate]
      ,[source]
  FROM [INTER].[dbo].[VW_TRANSFERMARKET_BR]
