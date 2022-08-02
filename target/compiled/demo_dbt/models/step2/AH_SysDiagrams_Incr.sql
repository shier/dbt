
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Principal_ID as varchar), Cast(Version as varchar), Cast(Definition as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_SysDiagrams_Inter]
	)
Select * From hashData
