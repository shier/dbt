create view "stg"."AH_Languages_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Code],[LastUpdatedUser] 
From stg.[AH_Languages_Incr] 
Where [dbt_valid_to] is null
