create view "stg"."Auct_SponsorDueDates_FinalView__dbt_tmp" as
    
Select
	[SponsorDueDatesID],[SponsorAuctionID],[DueDate],[Created],[UpdateEventID],[Amountdue] 
From stg.[Auct_SponsorDueDates_Incr] 
Where [dbt_valid_to] is null
