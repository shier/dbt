
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar), Cast(IsTest as varchar), Cast(Price as varchar), Cast(Inventory as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_NavInventory_Inter]
	)
Select * From hashData
