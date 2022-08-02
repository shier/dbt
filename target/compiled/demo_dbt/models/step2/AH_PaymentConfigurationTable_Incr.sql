
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_PaymentConfigurationTable_Inter]
	)
Select * From hashData
