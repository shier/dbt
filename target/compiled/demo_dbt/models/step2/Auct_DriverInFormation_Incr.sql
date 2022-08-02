
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ConsignmentID as varchar), Cast(TentLocationID as varchar), Cast(DeLiveryCarrierID as varchar), Cast(CheckedInUsersID as varchar), Cast(CheckedOutUsersID as varchar), Cast(ShippedCarrierID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar), SpareParts, VINLocation, ShippedCarrierOther, CheckedOutName, BidderNumber, LicenseNumber, TentSpaceNumber, DeLiveryCarrierOther)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DriverInFormation_Inter]
	)
Select * From hashData
