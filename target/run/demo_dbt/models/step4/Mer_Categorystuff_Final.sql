
  
  if object_id ('"stg"."Mer_Categorystuff_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Categorystuff_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Categorystuff_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Categorystuff_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_Categorystuff_Final__dbt_tmp_temp_view as
    
Select
	[Column1],[Column2] 
From stg.[Mer_Categorystuff_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Mer_Categorystuff_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Categorystuff_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Categorystuff_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Categorystuff_Final__dbt_tmp_temp_view"
    end


