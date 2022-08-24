{{ config(materialized='table',schema='dbo')}}

WITH Auct_Item_BR_stg AS (
	SELECT 
		[Item_Skey],
		[ItemType],
		[ItemDescription]
	FROM [dbo].[Auct_Car_DM]
	UNION 
	SELECT 
		[Item_Skey],
		[ItemType],
		[ItemDescription]
	FROM [dbo].[Auct_Automobilia_DM]
)

SELECT 
	[Item_Skey],
	[ItemType],
	[ItemDescription]
FROM Auct_Item_BR_stg