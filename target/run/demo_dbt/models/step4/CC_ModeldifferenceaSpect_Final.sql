
  
  if object_id ('"stg"."CC_ModeldifferenceaSpect_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModeldifferenceaSpect_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ModeldifferenceaSpect_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ModeldifferenceaSpect_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_ModeldifferenceaSpect_Final__dbt_tmp_temp_view as
    
Select
	[Owner],[OID],[Name],[Xml],[OptimisticLockField],[GcRecord] 
From [CC_ModeldifferenceaSpect_Incr]
    ');

  CREATE TABLE "stg"."CC_ModeldifferenceaSpect_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ModeldifferenceaSpect_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ModeldifferenceaSpect_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ModeldifferenceaSpect_Final__dbt_tmp_temp_view"
    end


