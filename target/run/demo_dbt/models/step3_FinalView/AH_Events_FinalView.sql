create view "stg"."AH_Events_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Name] 
From stg.[AH_Events_Incr] 
Where [dbt_valid_to] is null
