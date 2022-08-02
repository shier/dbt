
Select
	[ID],[Name],[Code],[CountryID],[CreatedOn],[UpdatedOn],[DeletedOn],[Enabled] 
From stg.[AH_States_Incr] 
Where [dbt_valid_to] is null