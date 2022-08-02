{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactRequestID] as int) [ContactRequestID],
	cast([FromContactID] as int) [FromContactID],
	cast([RequestTypeID] as int) [RequestTypeID],
	cast([AssignedContactID] as int) [AssignedContactID],
	cast([CompanyID] as int) [CompanyID],
	cast([PhoneID] as int) [PhoneID],
	cast([AddressID] as int) [AddressID],
	cast([EmailAddress] as nvarchar(4000)) [EmailAddress],
	cast([RequestFulfilled] as nvarchar(4000)) [RequestFulfilled],
	cast([DateFulfilled] as DATETIME) [DateFulfilled],
	cast([SuBJect] as nvarchar(4000)) [SuBJect],
	cast([CustomerComments] as nvarchar(4000)) [CustomerComments],
	cast([RequestNotes] as nvarchar(4000)) [RequestNotes],
	cast([AppointmentTimeStamp] as DATETIME) [AppointmentTimeStamp],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ContactRequest_FinalView]