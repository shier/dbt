
With hashData as (
		Select
			HASHBYTES('MD5', concat(DataTokenID, Cast(CreateDateUTC as varchar), Cast(ModifyDateUTC as varchar), Cast(IsActive as varchar), Cast(UserFK as varchar), Cast(ListingFK as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Favorites_Inter]
	)
Select * From hashData
