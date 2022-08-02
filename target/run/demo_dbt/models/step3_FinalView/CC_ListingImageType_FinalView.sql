create view "stg"."CC_ListingImageType_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_ListingImageType_Incr] 
Where [dbt_valid_to] is null
