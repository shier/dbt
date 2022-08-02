
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([OBJID] as varchar), Cast([ThresHold] as varchar), Cast([Range] as varchar), Cast([Pub_Range] as varchar), Cast([Current_Pub_Range] as varchar), Cast([Last_Seed] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Mspub_IDEntity_Range_Inter]
	)
Select * From hashData
