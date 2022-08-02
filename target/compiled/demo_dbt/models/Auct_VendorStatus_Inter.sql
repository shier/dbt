
Select
	VENDORSTATUSID VendorStatusID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_VendorStatus_Raw