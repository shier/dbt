
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar), MerchantID, Name, NickName, Email, Pin, Role)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Employees_Inter]
	)
Select * From hashData
