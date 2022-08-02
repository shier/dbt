
  
  if object_id ('"stg"."AH_Properties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Properties_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Properties_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Properties_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Properties_Inter__dbt_tmp_temp_view as
    
Select
	cast(Value as nvarchar(4000)) Value,
	cast(Name as nvarchar(4000)) Name,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	LineItemId LineItemID
From AH_Properties_Raw
    ');

  CREATE TABLE "stg"."AH_Properties_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Properties_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Properties_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Properties_Inter__dbt_tmp_temp_view"
    end


