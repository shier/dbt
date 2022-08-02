
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(CheckinDate as varchar), Cast(CheckOutDate as varchar), Cast(CustomerAccountID as varchar), Cast(ReservationStatusID as varchar), Cast(ChargeID as varchar), Cast(OccupantCustomerAccountID as varchar), Cast(AddressID as varchar), Cast(PhoneID as varchar), Cast(SiteCategoryID as varchar), Cast(SiteID as varchar), Cast(EventID as varchar), Cast(IsCheckedIn as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Reservation_Inter]
	)
Select * From hashData
