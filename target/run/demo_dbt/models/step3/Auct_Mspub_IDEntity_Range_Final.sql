
  
  if object_id ('"stg"."Auct_Mspub_IDEntity_Range_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Mspub_IDEntity_Range_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Mspub_IDEntity_Range_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Mspub_IDEntity_Range_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Mspub_IDEntity_Range_Final__dbt_tmp_temp_view as
    
Select
	[OBJID],[ThresHold],[Range],[Pub_Range],[Current_Pub_Range],[Last_Seed] 
From [Auct_Mspub_IDEntity_Range_Incr]
    ');

  CREATE TABLE "stg"."Auct_Mspub_IDEntity_Range_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Mspub_IDEntity_Range_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Mspub_IDEntity_Range_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Mspub_IDEntity_Range_Final__dbt_tmp_temp_view"
    end


