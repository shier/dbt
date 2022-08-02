
  
  if object_id ('"stg"."Mer_TempProducts_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TempProducts_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TempProducts_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_TempProducts_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_TempProducts_Inter__dbt_tmp_temp_view as
    
Select
	cast(No_ as nvarchar(4000)) No_,
	cast(No_2 as nvarchar(4000)) No_2,
	cast(Description as nvarchar(4000)) Description,
	cast(Description2 as nvarchar(4000)) Description2,
	cast(BaseUnitofMeasure as nvarchar(4000)) BaseUnitofmeasure,
	cast(ItemCategoryCode as nvarchar(4000)) ItemCategoryCode,
	UnitPrice UnitPrice
From Mer_TempProducts_Raw
    ');

  CREATE TABLE "stg"."Mer_TempProducts_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TempProducts_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_TempProducts_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TempProducts_Inter__dbt_tmp_temp_view"
    end


