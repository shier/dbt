
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Definition as varchar), Cast(Principal_ID as varchar), Cast(Diagram_ID as varchar), Cast(Version as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SysDiagrams_Inter]
	)
Select * From hashData
