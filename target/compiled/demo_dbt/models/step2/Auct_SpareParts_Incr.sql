
With hashData as (
		Select
			HASHBYTES('MD5', concat(BarcodeID, PartsDescription, InActive, CheckOutText, SpaceNumber, Cast(Created as varchar), Cast(DriverInFormationID as varchar), Cast(SparePartsTypeID as varchar), Cast(InActiveUpdateEventID as varchar), Cast(CheckOutUpdateEventID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SpareParts_Inter]
	)
Select * From hashData
