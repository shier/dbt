
  
  if object_id ('"stg"."Auct_Tasks_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Tasks_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Tasks_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Tasks_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Tasks_Final__dbt_tmp_temp_view as
    
Select
	[TaskID],[Active],[TaskCategoryID],[TaskCategoryLinkID],[TaskCategoryLinkGUID] 
From stg.[Auct_Tasks_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Tasks_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Tasks_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Tasks_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Tasks_Final__dbt_tmp_temp_view"
    end


