
  
  if object_id ('"stg"."AH_PropertybagItems_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_PropertybagItems_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_PropertybagItems_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_PropertybagItems_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_PropertybagItems_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	PropertyBagId PropertybagID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(Name as nvarchar(4000)) Name,
	cast(Value as nvarchar(4000)) Value
From AH_PropertybagItems_Raw
    ');

  CREATE TABLE "stg"."AH_PropertybagItems_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_PropertybagItems_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_PropertybagItems_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_PropertybagItems_Inter__dbt_tmp_temp_view"
    end


