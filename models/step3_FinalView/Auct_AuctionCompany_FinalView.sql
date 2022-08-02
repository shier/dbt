{{ config(materialized='view',schema='stg')}}
Select
	[AuctionCompanyID],[CompanyID],[Logo],[Created],[UpdateEventID] 
From stg.[Auct_AuctionCompany_Incr] 
Where [dbt_valid_to] is null