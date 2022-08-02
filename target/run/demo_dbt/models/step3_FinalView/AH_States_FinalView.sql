create view "stg"."AH_States_FinalView__dbt_tmp" as
    
Select
	[ID],[Name],[Code],[CreatedOn],[UpdatedOn],[DeletedOn],[Enabled],[CountryID] 
From stg.[AH_States_Incr] 
Where [dbt_valid_to] is null
