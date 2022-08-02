{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReservationID] as int) [ReservationID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([AddressID] as int) [AddressID],
	cast([PhoneID] as int) [PhoneID],
	cast([SiteCategoryID] as int) [SiteCategoryID],
	cast([SiteID] as int) [SiteID],
	cast([EventID] as int) [EventID],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([IsCheckedIn] as int) [IsCheckedIn],
	cast([CheckinDate] as datetime) [CheckinDate],
	cast([CheckOutDate] as datetime) [CheckOutDate],
	cast([ReservationStatusID] as int) [ReservationStatusID],
	cast([ChargeID] as int) [ChargeID],
	cast([OccupantCustomerAccountID] as int) [OccupantCustomerAccountID] 
From stg.[Auct_Reservation_FinalView]