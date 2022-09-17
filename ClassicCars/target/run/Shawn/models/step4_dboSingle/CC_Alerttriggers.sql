
  
  if object_id ('"dbo"."CC_Alerttriggers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Alerttriggers__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Alerttriggers__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Alerttriggers__dbt_tmp"
    end


   EXEC('create view dbo.CC_Alerttriggers__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([ListingID] as int) [ListingID],
	cast([AlerttriggerReasonID] as int) [AlerttriggerReasonID],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ImmediateDateProcessedUTC] as datetime) [ImmediateDateProcessedUTC],
	cast([DailyDateProcessedUTC] as datetime) [DailyDateProcessedUTC],
	cast([FraudDateProcessedUTC] as datetime) [FraudDateProcessedUTC],
	cast([Oldvalue] as nvarchar(4000)) [Oldvalue],
	cast([Newvalue] as nvarchar(4000)) [Newvalue] 
From stg.[CC_Alerttriggers_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Alerttriggers__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Alerttriggers__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Alerttriggers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Alerttriggers__dbt_tmp_temp_view"
    end


