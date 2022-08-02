create view "stg"."CC_CouponType_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_CouponType_Incr] 
Where [dbt_valid_to] is null
