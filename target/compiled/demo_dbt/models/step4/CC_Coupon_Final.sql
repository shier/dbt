
Select
	[ID],[StartDate],[EndDate],[CreateDate],[ModifyDate],[CouponTypeID],[Amount],[Description],[Code],[IsActive] 
From stg.[CC_Coupon_Incr] 
Where [dbt_valid_to] is null