{{ config(materialized='table',schema='dbo')}}
SELECT
	[Id] AS [PriceType_Skey],
	[Description]
FROM [stg].[CC_PriceType_FinalView]