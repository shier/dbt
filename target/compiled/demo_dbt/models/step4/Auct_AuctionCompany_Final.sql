
Select
	[AuctionCompanyID],[Logo],[CompanyID],[UpdateEventID],[Created] 
From stg.[Auct_AuctionCompany_Incr] 
Where [dbt_valid_to] is null