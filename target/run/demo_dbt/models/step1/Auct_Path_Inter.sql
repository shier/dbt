
  
  if object_id ('"stg"."Auct_Path_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Path_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Path_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Path_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Path_Inter__dbt_tmp_temp_view as
    
Select
	[PATHID] [PathID],
	cast([PATH] as nvarchar(4000)) [Path],
	[ACTIVE] [Active]
From stg.[Auct_Path_Raw]
    ');

  CREATE TABLE "stg"."Auct_Path_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Path_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Path_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Path_Inter__dbt_tmp_temp_view"
    end


