
  
  if object_id ('"stg"."CC_Product_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Product_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Product_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Product_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Product_Inter__dbt_tmp_temp_view as
    
Select
	cast(Description as nvarchar(4000)) Description,
	cast(DisplayDescription as nvarchar(4000)) DisplayDescription,
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Price Price,
	IsActive IsActive
From CC_Product_Raw
    ');

  CREATE TABLE "stg"."CC_Product_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Product_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Product_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Product_Inter__dbt_tmp_temp_view"
    end


