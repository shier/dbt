
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ModelID] as varchar), Cast([YearID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Model_Year_InterView]
	)
Select * From hashData
