
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([LoginprovIDEr], [ProvIDErKey], Cast([UserID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_UserLogins_InterView]
	)
Select * From hashData
