
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[CountryID],[UserID],[Stateregion],[ZipPostal],[LastUpdatedUser],[Description],[FirstName],[LastName],[Street1],[Street2],[City] 
From stg.[AH_Addresses_Incr] 
Where [dbt_valid_to] is null