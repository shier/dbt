
Select
	[ContactRequestID],[DateFulfilled],[AppointmentTimeStamp],[Created],[AddressID],[UpdateEventID],[FromContactID],[RequestTypeID],[AssignedContactID],[CompanyID],[PhoneID],[EmailAddress],[RequestFulfilled],[SuBJect],[CustomerComments],[RequestNotes] 
From stg.[Auct_ContactRequest_Incr] 
Where [dbt_valid_to] is null