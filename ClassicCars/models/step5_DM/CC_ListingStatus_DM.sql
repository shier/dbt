{{ config(materialized='table',schema='dbo')}}

SELECT
	[Id] AS [ListingStatus_Skey],
	[Description] AS [ListingStatus]
FROM [stg].[CC_ListingStatus_FinalView]