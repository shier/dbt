
  
  if object_id ('"stg"."Auct_DisplayStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DisplayStatus_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DisplayStatus_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DisplayStatus_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_DisplayStatus_Inter__dbt_tmp_temp_view as
    
Select
	[DISPLAYSTATUSID] [DisplayStatusID],
	cast([Name] as nvarchar(4000)) [Name]
From stg.[Auct_DisplayStatus_Raw]
    ');

  CREATE TABLE "stg"."Auct_DisplayStatus_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DisplayStatus_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DisplayStatus_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DisplayStatus_Inter__dbt_tmp_temp_view"
    end


