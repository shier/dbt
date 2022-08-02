
  
  if object_id ('"stg"."Mer_NewInventorystuff_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NewInventorystuff_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_NewInventorystuff_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_NewInventorystuff_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_NewInventorystuff_Inter__dbt_tmp_temp_view as
    
Select
	cast([No_] as nvarchar(4000)) [No_],
	cast([No_2] as nvarchar(4000)) [No_2],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Description_2] as nvarchar(4000)) [Description_2],
	cast([Base_Unit_of_Measure] as nvarchar(4000)) [Base_Unit_Of_Measure],
	cast([Item_Category_Code] as nvarchar(4000)) [Item_Category_Code],
	[Unit_Price] [Unit_Price]
From stg.[Mer_NewInventorystuff_Raw]
    ');

  CREATE TABLE "stg"."Mer_NewInventorystuff_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_NewInventorystuff_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_NewInventorystuff_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NewInventorystuff_Inter__dbt_tmp_temp_view"
    end


