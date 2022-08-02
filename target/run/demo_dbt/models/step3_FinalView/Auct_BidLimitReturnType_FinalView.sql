create view "stg"."Auct_BidLimitReturnType_FinalView__dbt_tmp" as
    
Select
	[BidLimitReturnTypeID],[Name],[Active] 
From stg.[Auct_BidLimitReturnType_Incr] 
Where [dbt_valid_to] is null
