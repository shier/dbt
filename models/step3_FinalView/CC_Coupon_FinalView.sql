{{ config(materialized='view',schema='stg')}}
Select
	[ID],[IsActive],[Amount],[CreateDate],[ModifyDate],[StartDate],[EndDate],[CouponTypeID],[Code],[Description] 
From stg.[CC_Coupon_Incr] 
Where [dbt_valid_to] is null