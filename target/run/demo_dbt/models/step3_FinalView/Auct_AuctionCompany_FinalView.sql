create view "stg"."Auct_AuctionCompany_FinalView__dbt_tmp" as
    
Select
	[AuctionCompanyID],[CompanyID],[Logo],[Created],[UpdateEventID] 
From stg.[Auct_AuctionCompany_Incr] 
Where [dbt_valid_to] is null
