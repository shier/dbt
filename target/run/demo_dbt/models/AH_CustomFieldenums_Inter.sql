
  
  if object_id ('"stg"."AH_CustomFieldenums_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CustomFieldenums_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_CustomFieldenums_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_CustomFieldenums_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_CustomFieldenums_Inter__dbt_tmp_temp_view as
    
Select
	cast(Name as nvarchar(4000)) Name,
	cast(Value as nvarchar(4000)) Value,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Enabled Enabled,
	Id ID,
	CustomFieldId CustomFieldID
From AH_CustomFieldenums_Raw
    ');

  CREATE TABLE "stg"."AH_CustomFieldenums_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_CustomFieldenums_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_CustomFieldenums_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_CustomFieldenums_Inter__dbt_tmp_temp_view"
    end


