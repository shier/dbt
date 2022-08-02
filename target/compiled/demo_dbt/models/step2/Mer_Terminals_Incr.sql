
With hashData as (
		Select
			HASHBYTES('MD5', concat(BuilDType, DeviceTypeName, MerchantID, Name, Model, Serial, SecureID, Cast(PinDisabled as varchar), Cast(OffLinePayments as varchar), Cast(OffLinePaymentsall as varchar), Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Terminals_Inter]
	)
Select * From hashData
