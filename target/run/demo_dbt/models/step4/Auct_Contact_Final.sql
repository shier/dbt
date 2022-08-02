
  
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
	[ContactID],[BCVendorID],[Name],[FirstName],[MiddleInitial],[LastName],[ShortNote],[PassportNumber],[PassportCountry],[PartnerName],[AccountingID],[VendorAccountingID],[BCCustomerID],[PreferredContactTime],[EmailAddress],[DlNumber],[DlState],[SSN],[DOB],[CommonID],[SourceID],[UpdateEventID],[LegacyID],[IDRef],[Active],[HasAccountigLink],[SalutationID],[ContactSuffixID],[UsersID],[ContactStatusID],[PreferredContactMethodID],[Created] 
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


