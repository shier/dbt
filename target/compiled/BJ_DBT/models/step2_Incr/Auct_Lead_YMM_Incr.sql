
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Lead_YMM_ID] as varchar), Cast([UsersID] as varchar), [Car_Year], [Car_Make], [Car_Model], Cast([Create_Date] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Lead_YMM_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_Lead_YMM_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
