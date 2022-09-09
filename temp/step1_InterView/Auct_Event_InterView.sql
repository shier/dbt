{{ config(materialized='view',schema='stg')}}
Select
	[EVENTID] [EventID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([CODE] as nvarchar(4000)) [Code],
	cast([PROJECTCODE] as nvarchar(4000)) [ProjectCode],
	[YEAR] [Year],
	[PARENTEVENTID] [ParentEventID],
	[EVENTTYPEID] [EventTypeID],
	[STARTDATE] [StartDate],
	[ENDDATE] [EndDate],
	[CREATED] [Created],
	[ACTIVE] [Active],
	[CREATEDBYUSERID] [CreatedByUserID],
	[LOCATIONADDRESSID] [LocationAddressID],
	[SHIPPINGADDRESSID] [ShippingAddressID],
	[BILLINGADDRESSID] [BillingAddressID],
	cast([IMAGEURL] as nvarchar(4000)) [ImageURL],
	[VENUEID] [VenueID]
From stg.[Auct_Event_Raw]
