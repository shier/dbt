create view "stg"."CC_ListingStatus_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_ListingStatus_Incr] 
Where [dbt_valid_to] is null
