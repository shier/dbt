{{ config(materialized='table',schema='dbo')}}
SELECT
	[Id] as [ListingCategory_Skey],
	[Description]
FROM [stg].[CC_ListingCategory_FinalView]