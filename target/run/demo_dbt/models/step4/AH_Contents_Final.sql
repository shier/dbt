
  
  if object_id ('"stg"."AH_Contents_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Contents_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Contents_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Contents_Final__dbt_tmp"
    end


   EXEC('create view stg.AH_Contents_Final__dbt_tmp_temp_view as
    
Select
	[ID],[DisplayOrder],[CreatedOn],[UpdatedOn],[DeletedOn],[Usehtmleditor],[Userdefined],[Name],[Culture],[PageTitle],[Text] 
From stg.[AH_Contents_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."AH_Contents_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Contents_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Contents_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Contents_Final__dbt_tmp_temp_view"
    end


