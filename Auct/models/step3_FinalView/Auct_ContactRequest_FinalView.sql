{{ config(materialized='view',schema='stg')}}
Select
	[ContactRequestID],[FromContactID],[RequestTypeID],[AssignedContactID],[CompanyID],[PhoneID],[AddressID],[EmailAddress],[RequestFulfilled],[DateFulfilled],[SuBJect],[CustomerComments],[RequestNotes],[AppointmentTimeStamp],[Created],[UpdateEventID] 
From stg.[Auct_ContactRequest_Incr] 
Where [dbt_valid_to] is null