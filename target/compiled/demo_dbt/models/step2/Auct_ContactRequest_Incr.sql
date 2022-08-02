
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(DateFulfilled as varchar), Cast(AppointmentTimeStamp as varchar), Cast(Created as varchar), Cast(AddressID as varchar), Cast(UpdateEventID as varchar), Cast(FromContactID as varchar), Cast(RequestTypeID as varchar), Cast(AssignedContactID as varchar), Cast(CompanyID as varchar), Cast(PhoneID as varchar), EmailAddress, RequestFulfilled, SuBJect, CustomerComments, RequestNotes)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContactRequest_Inter]
	)
Select * From hashData
