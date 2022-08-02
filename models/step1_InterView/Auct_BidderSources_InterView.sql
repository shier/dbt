{{ config(materialized='view',schema='stg')}}
Select
	[BIDDERSOURCEID] [BidderSourceID],
	cast([NAME] as nvarchar(4000)) [Name],
	[DISPLAYORDER] [DisplayOrder],
	[ACTIVE] [Active]
From stg.[Auct_BidderSources_Raw]
