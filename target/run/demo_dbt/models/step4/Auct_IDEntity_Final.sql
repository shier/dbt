
  
  if object_id ('"stg"."Auct_IDEntity_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_IDEntity_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_IDEntity_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_IDEntity_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_IDEntity_Final__dbt_tmp_temp_view as
    
Select
	[Range],[Pub_Range],[Current_Pub_Range],[Last_Seed],[OBJID],[ThresHold] 
From [Auct_IDEntity_Incr]
    ');

  CREATE TABLE "stg"."Auct_IDEntity_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_IDEntity_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_IDEntity_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_IDEntity_Final__dbt_tmp_temp_view"
    end


