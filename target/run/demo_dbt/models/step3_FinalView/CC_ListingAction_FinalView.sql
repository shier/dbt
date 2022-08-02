create view "stg"."CC_ListingAction_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_ListingAction_Incr] 
Where [dbt_valid_to] is null
