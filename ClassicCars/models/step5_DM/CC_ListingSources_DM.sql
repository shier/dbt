{{ config(materialized='table',schema='dbo')}}

SELECT
	[ListingSourcePK] as [ListingSource_Skey],
	[Description]
FROM [stg].[CC_ListingSources_FinalView]