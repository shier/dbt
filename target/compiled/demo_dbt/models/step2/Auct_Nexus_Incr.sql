
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(OnlineBusinessUnitID as varchar), Cast(Active as varchar), City, State, County)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Nexus_Inter]
	)
Select * From hashData
