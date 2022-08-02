
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(Created as varchar), Cast(BillingAddressID as varchar), Cast(VenueID as varchar), Cast(Year as varchar), Cast(ParentEventID as varchar), Cast(EventTypeID as varchar), Cast(Active as varchar), Cast(CreatedByUserID as varchar), Cast(LocationAddressID as varchar), Cast(ShippingAddressID as varchar), ProjectCode, ImageURL, Name, Code)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Event_Inter]
	)
Select * From hashData
