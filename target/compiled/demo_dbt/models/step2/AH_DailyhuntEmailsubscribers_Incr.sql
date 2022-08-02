
With hashData as (
		Select
			HASHBYTES('MD5', concat(Email, FirstName, LastName, Cast(ASenthusiast as varchar), Cast(AsBidder as varchar), Cast(AsConsignor as varchar), Cast(ZipCode as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_DailyhuntEmailsubscribers_Inter]
	)
Select * From hashData
