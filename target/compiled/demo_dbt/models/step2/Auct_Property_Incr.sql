
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(ConsignmentID as varchar), Cast(PropertyTypeKey as varchar), Cast(CurrentPropertyTransactionID as varchar), Cast(AuctionID as varchar), Description, PropertySpace, GUIDStamp, Active)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Property_Inter]
	)
Select * From hashData
