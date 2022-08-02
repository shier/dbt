
  
  if object_id ('"stg"."Auct_Config_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Config_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Config_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Config_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Config_Inter__dbt_tmp_temp_view as
    
Select
	[CONFIGID] [ConfigID],
	cast([STUB1] as nvarchar(4000)) [Stub1],
	cast([STUB2] as nvarchar(4000)) [Stub2],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Config_Raw]
    ');

  CREATE TABLE "stg"."Auct_Config_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Config_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Config_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Config_Inter__dbt_tmp_temp_view"
    end


