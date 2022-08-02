{{ config(materialized='view',schema='stg')}}
Select
	[ID],[UpdatedOn],[DeletedOn],[CreatedOn],[UserID],[CountryID],[Street1],[Street2],[City],[Stateregion],[ZipPostal],[LastUpdatedUser],[Description],[FirstName],[LastName] 
From stg.[AH_Addresses_Incr] 
Where [dbt_valid_to] is null