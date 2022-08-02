create view "stg"."Auct_Acctcmpy_FinalView__dbt_tmp" as
    
Select
	[ID],[AuctionID],[CompanyID],[Created],[UpdateEventID] 
From stg.[Auct_Acctcmpy_Incr] 
Where [dbt_valid_to] is null
