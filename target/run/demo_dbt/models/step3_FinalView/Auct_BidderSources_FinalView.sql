create view "stg"."Auct_BidderSources_FinalView__dbt_tmp" as
    
Select
	[BidderSourceID],[Name],[DisplayOrder],[Active] 
From stg.[Auct_BidderSources_Incr] 
Where [dbt_valid_to] is null
