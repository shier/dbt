
With hashData as (
		Select
			HASHBYTES('MD5', concat(Merchant_ID, LogType, Entry, Cast(Add_Date as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Loggingentries_Inter]
	)
Select * From hashData
