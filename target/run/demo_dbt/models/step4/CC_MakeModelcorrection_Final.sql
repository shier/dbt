
  
  if object_id ('"stg"."CC_MakeModelcorrection_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcorrection_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_MakeModelcorrection_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_MakeModelcorrection_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_MakeModelcorrection_Final__dbt_tmp_temp_view as
    
Select
	[ID],[CreateDate],[ModifyDate],[IsActive],[BadMake],[BadModel],[GoodMake],[GoodModel],[GoodTrim] 
From stg.[CC_MakeModelcorrection_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_MakeModelcorrection_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_MakeModelcorrection_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_MakeModelcorrection_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_MakeModelcorrection_Final__dbt_tmp_temp_view"
    end


