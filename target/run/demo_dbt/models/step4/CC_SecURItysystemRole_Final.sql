
  
  if object_id ('"stg"."CC_SecURItysystemRole_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemRole_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItysystemRole_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SecURItysystemRole_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_SecURItysystemRole_Final__dbt_tmp_temp_view as
    
Select
	[OID],[Name],[Isadministrative],[CaneditModel],[OptimisticLockField],[GcRecord],[OBJectType] 
From stg.[CC_SecURItysystemRole_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_SecURItysystemRole_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItysystemRole_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItysystemRole_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemRole_Final__dbt_tmp_temp_view"
    end


