
Select
	STARTDATE StartDate,
	ENDDATE EndDate,
	CREATED Created,
	BILLINGADDRESSID BillingAddressID,
	VENUEID VenueID,
	EVENTID EventID,
	YEAR Year,
	PARENTEVENTID ParentEventID,
	EVENTTYPEID EventTypeID,
	ACTIVE Active,
	CREATEDBYUSERID CreatedByUserID,
	LOCATIONADDRESSID LocationAddressID,
	SHIPPINGADDRESSID ShippingAddressID,
	cast(PROJECTCODE as nvarchar(4000)) ProjectCode,
	cast(IMAGEURL as nvarchar(4000)) ImageURL,
	cast(NAME as nvarchar(4000)) Name,
	cast(CODE as nvarchar(4000)) Code
From Auct_Event_Raw