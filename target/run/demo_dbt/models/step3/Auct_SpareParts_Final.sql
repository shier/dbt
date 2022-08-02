
  
  if object_id ('"stg"."Auct_SpareParts_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SpareParts_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SpareParts_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SpareParts_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SpareParts_Final__dbt_tmp_temp_view as
    
Select
	[SparePartsID],[DriverInFormationID],[SparePartsTypeID],[BarcodeID],[PartsDescription],[InActive],[InActiveUpdateEventID],[CheckOutText],[CheckOutUpdateEventID],[Created],[UpdateEventID],[SpaceNumber] 
From stg.[Auct_SpareParts_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_SpareParts_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SpareParts_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SpareParts_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SpareParts_Final__dbt_tmp_temp_view"
    end


