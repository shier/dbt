{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ListingID],[AlerttriggerReasonID],[CreateDateUTC],[ImmediateDateProcessedUTC],[DailyDateProcessedUTC],[FraudDateProcessedUTC],[Oldvalue],[Newvalue] 
From stg.[CC_Alerttriggers_Incr] 
Where [dbt_valid_to] is null