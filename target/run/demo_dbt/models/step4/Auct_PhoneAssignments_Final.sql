
  
  if object_id ('"stg"."Auct_PhoneAssignments_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhoneAssignments_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PhoneAssignments_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_PhoneAssignments_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_PhoneAssignments_Final__dbt_tmp_temp_view as
    
Select
	[PhoneAssignmentID],[IsDefault],[Created],[UpdateEventID],[CustomerAccountID],[PhoneID],[PhoneStatusID],[PhoneTypeID] 
From stg.[Auct_PhoneAssignments_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_PhoneAssignments_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PhoneAssignments_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_PhoneAssignments_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PhoneAssignments_Final__dbt_tmp_temp_view"
    end

