
Select
	DATEFULFILLED DateFulfilled,
	APPOINTMENTTIMESTAMP AppointmentTimeStamp,
	CREATED Created,
	ADDRESSID AddressID,
	UPDATEEVENTID UpdateEventID,
	CONTACTREQUESTID ContactRequestID,
	FROMCONTACTID FromContactID,
	REQUESTTYPEID RequestTypeID,
	ASSIGNEDCONTACTID AssignedContactID,
	COMPANYID CompanyID,
	PHONEID PhoneID,
	cast(EMAILADDRESS as nvarchar(4000)) EmailAddress,
	cast(REQUESTFULFILLED as nvarchar(4000)) RequestFulfilled,
	cast(SUBJECT as nvarchar(4000)) SuBJect,
	cast(CUSTOMERCOMMENTS as nvarchar(4000)) CustomerComments,
	cast(REQUESTNOTES as nvarchar(4000)) RequestNotes
From Auct_ContactRequest_Raw