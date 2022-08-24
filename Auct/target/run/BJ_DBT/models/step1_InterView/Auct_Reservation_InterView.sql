create view "stg"."Auct_Reservation_InterView__dbt_tmp" as
    
Select
	[RESERVATIONID] [ReservationID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[ADDRESSID] [AddressID],
	[PHONEID] [PhoneID],
	[SITECATEGORYID] [SiteCategoryID],
	[SITEID] [SiteID],
	[EVENTID] [EventID],
	[STARTDATE] [StartDate],
	[ENDDATE] [EndDate],
	[ISCHECKEDIN] [IsCheckedIn],
	[CHECKINDATE] [CheckinDate],
	[CHECKOUTDATE] [CheckOutDate],
	[RESERVATIONSTATUSID] [ReservationStatusID],
	[CHARGEID] [ChargeID],
	[OCCUPANTCUSTOMERACCOUNTID] [OccupantCustomerAccountID]
From stg.[Auct_Reservation_Raw]
