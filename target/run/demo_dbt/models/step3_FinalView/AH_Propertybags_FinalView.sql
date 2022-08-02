create view "stg"."AH_Propertybags_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_Propertybags_Incr] 
Where [dbt_valid_to] is null
