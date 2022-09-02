create view "stg"."AH_ImportedCategoryMap_FinalView__dbt_tmp" as
    
Select
	[LocalCategoryID],[ForeignCategoryID] 
From stg.[AH_ImportedCategoryMap_Incr] 
Where [dbt_valid_to] is null
