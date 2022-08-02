
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Lead_YMM_ID] as varchar), Cast([UsersID] as varchar), Cast([Create_Date] as varchar), [Car_Year], [Car_Make], [Car_Model])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_YMM_Inter]
	)
Select * From hashData
