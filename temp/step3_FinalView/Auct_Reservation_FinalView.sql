{{ config(materialized='view',schema='stg')}}
Select
	[ReservationID],[CustomerAccountID],[AddressID],[PhoneID],[SiteCategoryID],[SiteID],[EventID],[StartDate],[EndDate],[IsCheckedIn],[CheckinDate],[CheckOutDate],[ReservationStatusID],[ChargeID],[OccupantCustomerAccountID] 
From stg.[Auct_Reservation_Incr] 
Where [dbt_valid_to] is null