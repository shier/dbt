create view "stg"."AH_SMStemplatecontents_FinalView__dbt_tmp" as
    
Select
	[ID],[Name],[Body],[UpdatedOn],[DeletedOn],[CreatedOn] 
From stg.[AH_SMStemplatecontents_Incr] 
Where [dbt_valid_to] is null
