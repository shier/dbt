
  
  if object_id ('"stg"."AH_UserAlerts_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UserAlerts_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_UserAlerts_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_UserAlerts_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_UserAlerts_Inter__dbt_tmp_temp_view as
    
Select
	ModelId ModelID,
	YearFrom YearFrom,
	YearTo Yearto,
	Id ID,
	UserId UserID,
	MakeId MakeID,
	Enabled Enabled,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon
From AH_UserAlerts_Raw
    ');

  CREATE TABLE "stg"."AH_UserAlerts_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_UserAlerts_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_UserAlerts_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UserAlerts_Inter__dbt_tmp_temp_view"
    end


