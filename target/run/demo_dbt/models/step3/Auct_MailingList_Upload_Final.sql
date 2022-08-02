
  
  if object_id ('"stg"."Auct_MailingList_Upload_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MailingList_Upload_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MailingList_Upload_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_MailingList_Upload_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_MailingList_Upload_Final__dbt_tmp_temp_view as
    
Select
	[TransactionID],[FirstName],[LastName],[Middle],[Address1],[Address2],[City],[StateProvince],[CountryID],[County],[EventID],[Careof],[PostalCode],[Created],[Active],[MailListUploadID],[ErrorMessage] 
From [Auct_MailingList_Upload_Incr]
    ');

  CREATE TABLE "stg"."Auct_MailingList_Upload_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MailingList_Upload_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_MailingList_Upload_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MailingList_Upload_Final__dbt_tmp_temp_view"
    end


