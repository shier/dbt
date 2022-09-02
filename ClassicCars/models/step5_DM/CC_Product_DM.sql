{{ config(materialized='table',schema='dbo')}}

SELECT
	[Id] AS [Product_Skey],
	[IsActive],
	[Price],
	[Description],
	[DisplayDescription],
	[CreateDate],
	[ModifyDate]
FROM [stg].[CC_Product_FinalView]