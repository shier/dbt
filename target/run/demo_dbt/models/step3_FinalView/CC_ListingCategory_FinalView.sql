create view "stg"."CC_ListingCategory_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_ListingCategory_Incr] 
Where [dbt_valid_to] is null
