
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Siteproperties_Inter]
	)
Select * From hashData
