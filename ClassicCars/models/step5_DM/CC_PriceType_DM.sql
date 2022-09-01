{{ config(materialized='table',schema='dbo')}}
SELECT
	[Id] as [PriceType_Skey],
	[Description]
FROM [stg].[CC_PriceType_FinalView]