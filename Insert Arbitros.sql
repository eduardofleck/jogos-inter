INSERT INTO referee (NAME)
SELECT ARBITRO FROM (
select Arbitro from [dbo].[TRANSFERMARKET_BR] group by Arbitro 
UNION
select Arbitro from [dbo].[TRANSFERMARKET_CDB] group by Arbitro 
UNION
select JUIZ AS Arbitro from [dbo].[PERIN] group by JUIZ
UNION
select Arbitro from [dbo].[GRENAIS] group by Arbitro
) X
WHERE X.arbitro IS NOT NULL
GROUP BY Arbitro