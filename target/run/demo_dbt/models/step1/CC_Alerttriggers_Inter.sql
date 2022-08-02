
  
  if object_id ('"stg"."CC_Alerttriggers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Alerttriggers_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Alerttriggers_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Alerttriggers_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Alerttriggers_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[ListingId] [ListingID],
	[AlertTriggerReasonID] [AlerttriggerReasonID],
	[CreateDateUTC] [CreateDateUTC],
	[ImmediateDateProcessedUTC] [ImmediateDateProcessedUTC],
	[DailyDateProcessedUTC] [DailyDateProcessedUTC],
	[FraudDateProcessedUTC] [FraudDateProcessedUTC],
	cast([OldValue] as nvarchar(4000)) [Oldvalue],
	cast([NewValue] as nvarchar(4000)) [Newvalue]
From stg.[CC_Alerttriggers_Raw]
    ');

  CREATE TABLE "stg"."CC_Alerttriggers_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Alerttriggers_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Alerttriggers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Alerttriggers_Inter__dbt_tmp_temp_view"
    end


