
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsMain as varchar), Cast(OptimisticLockField as varchar), Name, AssemblyFileName, Version)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ModuleInfo_Inter]
	)
Select * From hashData
