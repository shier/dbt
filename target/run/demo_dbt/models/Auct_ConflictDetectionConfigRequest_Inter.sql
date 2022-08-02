
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigRequest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigRequest_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConflictDetectionConfigRequest_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConflictDetectionConfigRequest_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConflictDetectionConfigRequest_Inter__dbt_tmp_temp_view as
    
Select
	id ID,
	timeout TimeOut,
	sent_date Sent_Date,
	modified_date Modified_Date,
	cast(publication as nvarchar(4000)) Publication,
	cast(progress_phase as nvarchar(4000)) Progress_Phase,
	phase_timed_out Phase_Timed_Out
From Auct_ConflictDetectionConfigRequest_Raw
    ');

  CREATE TABLE "stg"."Auct_ConflictDetectionConfigRequest_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConflictDetectionConfigRequest_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConflictDetectionConfigRequest_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConflictDetectionConfigRequest_Inter__dbt_tmp_temp_view"
    end


