{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReservationID] as int) [RESERVATIONID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([PhoneID] as int) [PHONEID],
	cast([SiteCategoryID] as int) [SITECATEGORYID],
	cast([SiteID] as int) [SITEID],
	cast([EventID] as int) [EVENTID],
	cast([StartDate] as datetime) [STARTDATE],
	cast([EndDate] as datetime) [ENDDATE],
	cast([IsCheckedIn] as int) [ISCHECKEDIN],
	cast([CheckinDate] as datetime) [CHECKINDATE],
	cast([CheckOutDate] as datetime) [CHECKOUTDATE],
	cast([ReservationStatusID] as int) [RESERVATIONSTATUSID],
	cast([ChargeID] as int) [CHARGEID],
	cast([OccupantCustomerAccountID] as int) [OCCUPANTCUSTOMERACCOUNTID] 
From stg.[Auct_Reservation_FinalView]