
Select
	[ContactID],[BCVendorID],[Name],[FirstName],[MiddleInitial],[LastName],[ShortNote],[PassportNumber],[PassportCountry],[PartnerName],[AccountingID],[VendorAccountingID],[BCCustomerID],[PreferredContactTime],[EmailAddress],[DlNumber],[DlState],[SSN],[DOB],[CommonID],[SourceID],[UpdateEventID],[LegacyID],[IDRef],[Active],[HasAccountigLink],[SalutationID],[ContactSuffixID],[UsersID],[ContactStatusID],[PreferredContactMethodID],[Created] 
From stg.[Auct_Contact_Incr] 
Where [dbt_valid_to] is null