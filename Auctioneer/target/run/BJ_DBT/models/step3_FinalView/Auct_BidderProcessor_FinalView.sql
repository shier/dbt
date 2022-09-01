create view "stg"."Auct_BidderProcessor_FinalView__dbt_tmp" as
    
Select
	[BidderProcessorID],[Name],[ClassName] 
From stg.[Auct_BidderProcessor_Incr] 
Where [dbt_valid_to] is null
