create view "stg"."Auct_TaxRates_FinalView__dbt_tmp" as
    
Select
	[TaxRatesID],[Name],[Created],[UpdateEventID],[AuctionID],[Rate] 
From stg.[Auct_TaxRates_Incr] 
Where [dbt_valid_to] is null