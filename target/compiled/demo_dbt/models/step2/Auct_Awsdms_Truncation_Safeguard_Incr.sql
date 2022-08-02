
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([LatchTaskName], [LatchMachineGUID], [LatchKey], Cast([LatchLocker] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Awsdms_Truncation_Safeguard_Inter]
	)
Select * From hashData
