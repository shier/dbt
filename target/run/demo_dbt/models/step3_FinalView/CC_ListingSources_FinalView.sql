create view "stg"."CC_ListingSources_FinalView__dbt_tmp" as
    
Select
	[ListingSourcePK],[Description] 
From stg.[CC_ListingSources_Incr] 
Where [dbt_valid_to] is null
