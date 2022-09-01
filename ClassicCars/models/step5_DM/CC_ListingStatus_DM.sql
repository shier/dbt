{{ config(materialized='table',schema='dbo')}}

SELECT
	[Id] as [ListingStatus_Skey],
	[Description] as [ListingStatus]
FROM [stg].[CC_ListingStatus_FinalView]