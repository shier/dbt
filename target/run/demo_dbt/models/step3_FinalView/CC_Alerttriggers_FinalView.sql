create view "stg"."CC_Alerttriggers_FinalView__dbt_tmp" as
    
Select
	[ID],[ListingID],[AlerttriggerReasonID],[CreateDateUTC],[ImmediateDateProcessedUTC],[DailyDateProcessedUTC],[FraudDateProcessedUTC],[Oldvalue],[Newvalue] 
From stg.[CC_Alerttriggers_Incr] 
Where [dbt_valid_to] is null
