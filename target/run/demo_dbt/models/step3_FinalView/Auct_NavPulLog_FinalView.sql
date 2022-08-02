create view "stg"."Auct_NavPulLog_FinalView__dbt_tmp" as
    
Select
	[ID],[ProcessDate],[RecsProcessed],[Status],[AuctionID],[Created] 
From stg.[Auct_NavPulLog_Incr] 
Where [dbt_valid_to] is null
