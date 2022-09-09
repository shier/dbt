{{ config(materialized='view',schema='stg')}}
Select
	[ListingSourcePK] [ListingSourcePK],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[CC_ListingSources_Raw]
