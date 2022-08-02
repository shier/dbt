
  
  if object_id ('"stg"."Mer_Categorystuff_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Categorystuff_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Categorystuff_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Categorystuff_Inter__dbt_tmp"
    end


   EXEC('create view stg.Mer_Categorystuff_Inter__dbt_tmp_temp_view as
    
Select
	cast([column1] as nvarchar(4000)) [Column1],
	cast([column2] as nvarchar(4000)) [Column2]
From stg.[Mer_Categorystuff_Raw]
    ');

  CREATE TABLE "stg"."Mer_Categorystuff_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Categorystuff_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Categorystuff_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Categorystuff_Inter__dbt_tmp_temp_view"
    end


