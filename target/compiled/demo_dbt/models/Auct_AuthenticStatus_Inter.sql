
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(BIDGENERATORTEXT as nvarchar(4000)) BidGeneratorText,
	AUTHENTICSTATUSID AuthenticStatusID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created
From Auct_AuthenticStatus_Raw