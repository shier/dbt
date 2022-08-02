
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DateperFormed as varchar), Cast(DateRequested as varchar), Cast(Created as varchar), Cast(CarID as varchar), Cast(OwnerContactID as varchar), Cast(PerFormedByContactID as varchar), Cast(UpdateEventID as varchar), Results)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Inspection_Inter]
	)
Select * From hashData
