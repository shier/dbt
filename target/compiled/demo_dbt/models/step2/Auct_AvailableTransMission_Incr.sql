
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CarTransMissionID as varchar), Cast(CarModelID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar), AllowDropDown)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AvailableTransMission_Inter]
	)
Select * From hashData
