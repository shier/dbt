
  
  if object_id ('"stg"."AH_Reports_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Reports_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Reports_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Reports_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Reports_Inter__dbt_tmp_temp_view as
    
Select
	SecondsToGenerate SecondstogeneRate,
	cast(ReportName as nvarchar(4000)) ReportName,
	cast(Data as nvarchar(4000)) Data,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	UserId UserID
From AH_Reports_Raw
    ');

  CREATE TABLE "stg"."AH_Reports_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Reports_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Reports_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Reports_Inter__dbt_tmp_temp_view"
    end


