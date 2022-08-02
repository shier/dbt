
Select
	CUSTOMERACCOUNTID CustomerAccountID,
	ADDRESSSTATUSID AddressStatusID,
	UPDATEEVENTID UpdateEventID,
	COMPANYID CompanyID,
	ADDRESSTYPEID AddressTypeID,
	ASSIGNMENTID AssignmentID,
	ADDRESSID AddressID,
	cast(ISDEFAULT as nvarchar(4000)) IsDefault,
	cast(ADDDESCR as nvarchar(4000)) Adddescr
From Auct_AddressAssignments_Raw