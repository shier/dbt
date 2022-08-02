
  
  if object_id ('"stg"."Auct_BusinessCentralHelper_Archive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BusinessCentralHelper_Archive_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BusinessCentralHelper_Archive_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_BusinessCentralHelper_Archive_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_BusinessCentralHelper_Archive_Final__dbt_tmp_temp_view as
    
Select
	[BusinessCentralArchiveID],[BusinessCentralHelper_MethodName],[BusinessCentralHelper_ParaMeterTypeName],[BusinessCentralHelper_ParaMeterPayload],[InvoiceID],[BusinessCentral_Documentno],[Processed] 
From stg.[Auct_BusinessCentralHelper_Archive_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_BusinessCentralHelper_Archive_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BusinessCentralHelper_Archive_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_BusinessCentralHelper_Archive_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BusinessCentralHelper_Archive_Final__dbt_tmp_temp_view"
    end


