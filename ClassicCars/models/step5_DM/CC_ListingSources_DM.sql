{{ config(materialized='table',schema='dbo')}}

SELECT
	[ListingSourcePK] AS [ListingSource_Skey],
	[Description]
FROM [stg].[CC_ListingSources_FinalView]