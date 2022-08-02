{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ProcessDate],[RecsProcessed],[Status],[AuctionID],[Created] 
From stg.[Auct_NavPulLog_Incr] 
Where [dbt_valid_to] is null