
  
  if object_id ('"stg"."CC_EmailProcessed_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailProcessed_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_EmailProcessed_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_EmailProcessed_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_EmailProcessed_Final__dbt_tmp_temp_view as
    
Select
	[ID],[ResponseCode],[ForeignID],[DateSent],[CreateDate],[ModifyDate],[IsActive],[SentFrom],[Replyto],[IpAddress],[Template],[Fields],[Meta],[Response],[MandrillID],[MandrillrejectReason],[SuBJect] 
From stg.[CC_EmailProcessed_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_EmailProcessed_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_EmailProcessed_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_EmailProcessed_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailProcessed_Final__dbt_tmp_temp_view"
    end


