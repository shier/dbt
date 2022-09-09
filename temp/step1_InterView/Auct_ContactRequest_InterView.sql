{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTREQUESTID] [ContactRequestID],
	[FROMCONTACTID] [FromContactID],
	[REQUESTTYPEID] [RequestTypeID],
	[ASSIGNEDCONTACTID] [AssignedContactID],
	[COMPANYID] [CompanyID],
	[PHONEID] [PhoneID],
	[ADDRESSID] [AddressID],
	cast([EMAILADDRESS] as nvarchar(4000)) [EmailAddress],
	cast([REQUESTFULFILLED] as nvarchar(4000)) [RequestFulfilled],
	[DATEFULFILLED] [DateFulfilled],
	cast([SUBJECT] as nvarchar(4000)) [SuBJect],
	cast([CUSTOMERCOMMENTS] as nvarchar(4000)) [CustomerComments],
	cast([REQUESTNOTES] as nvarchar(4000)) [RequestNotes],
	[APPOINTMENTTIMESTAMP] [AppointmentTimeStamp],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactRequest_Raw]
