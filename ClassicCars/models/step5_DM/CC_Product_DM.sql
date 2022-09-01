{{ config(materialized='table',schema='dbo')}}

SELECT
	[Id] as [Product_Skey],
	[IsActive],
	[Price],
    [Description],
	[DisplayDescription],
    [CreateDate],
	[ModifyDate]
FROM [stg].[CC_Product_FinalView]