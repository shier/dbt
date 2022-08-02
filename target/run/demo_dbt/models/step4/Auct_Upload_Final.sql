
  
  if object_id ('"stg"."Auct_Upload_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Upload_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Upload_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Upload_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Upload_Final__dbt_tmp_temp_view as
    
Select
	[CountryID],[EventID],[Active],[MailListUploadID],[Created],[Address2],[City],[StateProvince],[County],[Careof],[PostalCode],[ErrorMessage],[TransactionID],[FirstName],[LastName],[Middle],[Address1] 
From [Auct_Upload_Incr]
    ');

  CREATE TABLE "stg"."Auct_Upload_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Upload_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Upload_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Upload_Final__dbt_tmp_temp_view"
    end


