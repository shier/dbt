{{ config(materialized='table',schema='dbo')}}
Select
	cast([EventID] as int) [EVENTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Code] as nvarchar(4000)) [CODE],
	cast([ProjectCode] as nvarchar(4000)) [PROJECTCODE],
	cast([Year] as int) [YEAR],
	cast([ParentEventID] as int) [PARENTEVENTID],
	cast([EventTypeID] as int) [EVENTTYPEID],
	cast([StartDate] as DATETIME) [STARTDATE],
	cast([EndDate] as DATETIME) [ENDDATE],
	cast([Created] as DATETIME) [CREATED],
	cast([Active] as int) [ACTIVE],
	cast([CreatedByUserID] as int) [CREATEDBYUSERID],
	cast([LocationAddressID] as int) [LOCATIONADDRESSID],
	cast([ShippingAddressID] as int) [SHIPPINGADDRESSID],
	cast([BillingAddressID] as int) [BILLINGADDRESSID],
	cast([ImageURL] as nvarchar(4000)) [IMAGEURL],
	cast([VenueID] as int) [VENUEID] 
From stg.[Auct_Event_FinalView]