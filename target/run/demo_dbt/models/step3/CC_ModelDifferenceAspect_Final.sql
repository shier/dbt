
  
  if object_id ('"stg"."CC_ModelDifferenceAspect_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModelDifferenceAspect_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ModelDifferenceAspect_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ModelDifferenceAspect_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_ModelDifferenceAspect_Final__dbt_tmp_temp_view as
    
Select
	[OID],[Name],[Xml],[Owner],[OptimisticLockField],[GcRecord] 
From [CC_ModelDifferenceAspect_Incr]
    ');

  CREATE TABLE "stg"."CC_ModelDifferenceAspect_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ModelDifferenceAspect_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ModelDifferenceAspect_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModelDifferenceAspect_Final__dbt_tmp_temp_view"
    end


