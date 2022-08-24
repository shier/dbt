create view "stg"."Auct_BidderSources_InterView__dbt_tmp" as
    
Select
	[BIDDERSOURCEID] [BidderSourceID],
	cast([NAME] as nvarchar(4000)) [Name],
	[DISPLAYORDER] [DisplayOrder],
	[ACTIVE] [Active]
From stg.[Auct_BidderSources_Raw]
