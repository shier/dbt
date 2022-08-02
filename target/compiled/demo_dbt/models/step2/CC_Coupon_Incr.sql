
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(CouponTypeID as varchar), Cast(Amount as varchar), Description, Code, Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Coupon_Inter]
	)
Select * From hashData
