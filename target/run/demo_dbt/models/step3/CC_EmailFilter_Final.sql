
  
  if object_id ('"stg"."CC_EmailFilter_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailFilter_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_EmailFilter_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_EmailFilter_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_EmailFilter_Final__dbt_tmp_temp_view as
    
Select
	[ID],[FilterCodeID],[CreateDate],[ModifyDate],[IsActive],[FilterType],[FilterValue] 
From stg.[CC_EmailFilter_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_EmailFilter_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_EmailFilter_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_EmailFilter_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailFilter_Final__dbt_tmp_temp_view"
    end


