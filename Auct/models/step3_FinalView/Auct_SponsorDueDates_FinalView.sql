{{ config(materialized='view',schema='stg')}}
Select
	[SponsorDueDatesID],[SponsorAuctionID],[DueDate],[Created],[UpdateEventID],[Amountdue] 
From stg.[Auct_SponsorDueDates_Incr] 
Where [dbt_valid_to] is null