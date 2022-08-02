
  
  if object_id ('"stg"."Auct_EnablementLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EnablementLog_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_EnablementLog_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_EnablementLog_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_EnablementLog_Inter__dbt_tmp_temp_view as
    
Select
	[ENABLEMENTLOGID] [EnablementLogID],
	[USERSID] [UsersID],
	cast([ENABLED] as nvarchar(4000)) [Enabled],
	cast([REASON] as nvarchar(4000)) [Reason],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_EnablementLog_Raw]
    ');

  CREATE TABLE "stg"."Auct_EnablementLog_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_EnablementLog_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_EnablementLog_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EnablementLog_Inter__dbt_tmp_temp_view"
    end


