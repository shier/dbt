
  
  if object_id ('"stg"."Auct_CarTransMission_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarTransMission_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CarTransMission_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CarTransMission_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_CarTransMission_Inter__dbt_tmp_temp_view as
    
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(ACTIVE as nvarchar(4000)) Active,
	WEBACTIVE WebActive,
	CARTRANSMISSIONID CarTransMissionID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created
From Auct_CarTransMission_Raw
    ');

  CREATE TABLE "stg"."Auct_CarTransMission_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CarTransMission_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CarTransMission_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarTransMission_Inter__dbt_tmp_temp_view"
    end


