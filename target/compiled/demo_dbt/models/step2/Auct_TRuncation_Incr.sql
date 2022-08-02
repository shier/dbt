
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([LatchLocker] as varchar), [LatchTaskName], [LatchMachineGUID], [LatchKey])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TRuncation_Inter]
	)
Select * From hashData
