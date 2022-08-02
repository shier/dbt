
Select
	[SponsorDueDatesID],[Amountdue],[DueDate],[Created],[SponsorAuctionID],[UpdateEventID] 
From stg.[Auct_SponsorDueDates_Incr] 
Where [dbt_valid_to] is null