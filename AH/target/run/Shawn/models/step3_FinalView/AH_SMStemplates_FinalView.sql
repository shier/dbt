create view "stg"."AH_SMStemplates_FinalView__dbt_tmp" as
    
Select
	[ID],[Enabled],[CreatedOn],[UpdatedOn],[DeletedOn],[Name] 
From stg.[AH_SMStemplates_Incr] 
Where [dbt_valid_to] is null
