
  
  if object_id ('"stg"."Auct_Contact_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Contact_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Contact_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Contact_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Contact_Final__dbt_tmp_temp_view as
    
Select
	[ContactID],[Name],[SalutationID],[FirstName],[MiddleInitial],[LastName],[ContactSuffixID],[ShortNote],[UsersID],[ContactStatusID],[PreferredContactMethodID],[PreferredContactTime],[EmailAddress],[SourceID],[Created],[UpdateEventID],[DlNumber],[DlState],[SSN],[DOB],[PassportNumber],[PassportCountry],[LegacyID],[IDRef],[Active],[PartnerName],[HasAccountigLink],[AccountingID],[VendorAccountingID],[CommonID],[BCCustomerID],[BCVendorID] 
From stg.[Auct_Contact_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Contact_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Contact_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Contact_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Contact_Final__dbt_tmp_temp_view"
    end


