
  
  if object_id ('"stg"."CC_ModelDifference_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModelDifference_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ModelDifference_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ModelDifference_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_ModelDifference_Final__dbt_tmp_temp_view as
    
Select
	[Version],[OptimisticLockField],[GcRecord],[OID],[UserID],[ConTextID] 
From [CC_ModelDifference_Incr]
    ');

  CREATE TABLE "stg"."CC_ModelDifference_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ModelDifference_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ModelDifference_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModelDifference_Final__dbt_tmp_temp_view"
    end


