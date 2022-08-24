create view "stg"."Auct_Collection_FinalView__dbt_tmp" as
    
Select
	[CollectionID],[Name],[Description],[AuctionID],[Active] 
From stg.[Auct_Collection_Incr] 
Where [dbt_valid_to] is null
