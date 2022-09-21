
Select
	cast([ContactRequestID] as int) [CONTACTREQUESTID],
	cast([FromContactID] as int) [FROMCONTACTID],
	cast([RequestTypeID] as int) [REQUESTTYPEID],
	cast([AssignedContactID] as int) [ASSIGNEDCONTACTID],
	cast([CompanyID] as int) [COMPANYID],
	cast([PhoneID] as int) [PHONEID],
	cast([AddressID] as int) [ADDRESSID],
	cast([EmailAddress] as nvarchar(4000)) [EMAILADDRESS],
	cast([RequestFulfilled] as nvarchar(4000)) [REQUESTFULFILLED],
	cast([DateFulfilled] as DATETIME) [DATEFULFILLED],
	cast([SuBJect] as nvarchar(4000)) [SUBJECT],
	cast([CustomerComments] as nvarchar(4000)) [CUSTOMERCOMMENTS],
	cast([RequestNotes] as nvarchar(4000)) [REQUESTNOTES],
	cast([AppointmentTimeStamp] as DATETIME) [APPOINTMENTTIMESTAMP],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ContactRequest_FinalView]