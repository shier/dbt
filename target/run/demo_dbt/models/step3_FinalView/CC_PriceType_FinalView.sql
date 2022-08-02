create view "stg"."CC_PriceType_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_PriceType_Incr] 
Where [dbt_valid_to] is null
