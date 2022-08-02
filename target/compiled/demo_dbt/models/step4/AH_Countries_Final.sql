
Select
	[ID],[Code],[Name],[CreatedOn],[UpdatedOn],[DeletedOn],[Enabled],[StateRequired] 
From stg.[AH_Countries_Incr] 
Where [dbt_valid_to] is null