
Select
	[ReservationID],[StartDate],[EndDate],[CheckinDate],[CheckOutDate],[CustomerAccountID],[ReservationStatusID],[ChargeID],[OccupantCustomerAccountID],[AddressID],[PhoneID],[SiteCategoryID],[SiteID],[EventID],[IsCheckedIn] 
From stg.[Auct_Reservation_Incr] 
Where [dbt_valid_to] is null