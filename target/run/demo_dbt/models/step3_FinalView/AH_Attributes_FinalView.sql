create view "stg"."AH_Attributes_FinalView__dbt_tmp" as
    
Select
	[ID],[ConText],[Name],[Value],[EditMode],[Type],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_Attributes_Incr] 
Where [dbt_valid_to] is null
