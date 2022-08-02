
  
  if object_id ('"stg"."Mer_Spirits_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Spirits_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Spirits_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Mer_Spirits_Final__dbt_tmp"
    end


   EXEC('create view stg.Mer_Spirits_Final__dbt_tmp_temp_view as
    
Select
	[No_],[No_2],[Description],[Description_2],[Base_Unit_Of_Measure],[Item_Category_Code],[Unit_Price] 
From [Mer_Spirits_Incr]
    ');

  CREATE TABLE "stg"."Mer_Spirits_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Spirits_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Mer_Spirits_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Spirits_Final__dbt_tmp_temp_view"
    end


