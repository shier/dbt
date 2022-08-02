
  
  if object_id ('"stg"."Mer_InventoryLevels_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_InventoryLevels_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_InventoryLevels_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_InventoryLevels_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_InventoryLevels_Inter__dbt_tmp_temp_view as
    
Select
	COUNT Count,
	cast(SKU as nvarchar(4000)) Sku
From Mer_InventoryLevels_Raw
    ');

  CREATE TABLE "stg"."Mer_InventoryLevels_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_InventoryLevels_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_InventoryLevels_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_InventoryLevels_Inter__dbt_tmp_temp_view"
    end


