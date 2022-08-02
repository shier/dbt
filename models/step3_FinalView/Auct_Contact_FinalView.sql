{{ config(materialized='view',schema='stg')}}
Select
	[ContactID],[Name],[SalutationID],[FirstName],[MiddleInitial],[LastName],[ContactSuffixID],[ShortNote],[UsersID],[ContactStatusID],[PreferredContactMethodID],[PreferredContactTime],[EmailAddress],[SourceID],[Created],[UpdateEventID],[DlNumber],[DlState],[SSN],[DOB],[PassportNumber],[PassportCountry],[LegacyID],[IDRef],[Active],[PartnerName],[HasAccountigLink],[AccountingID],[VendorAccountingID],[CommonID],[BCCustomerID],[BCVendorID] 
From stg.[Auct_Contact_Incr] 
Where [dbt_valid_to] is null