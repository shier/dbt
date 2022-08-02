create view "stg"."Auct_Buyer_FinalView__dbt_tmp" as
    
Select
	[BuyerID],[ContactID],[CompanyID],[Created],[UpdateEventID] 
From stg.[Auct_Buyer_Incr] 
Where [dbt_valid_to] is null
