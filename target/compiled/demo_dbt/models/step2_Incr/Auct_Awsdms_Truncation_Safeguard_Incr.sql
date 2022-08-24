
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([LatchTaskName], [LatchMachineGUID], [LatchKey], Cast([LatchLocker] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Awsdms_Truncation_Safeguard_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_Awsdms_Truncation_Safeguard_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
