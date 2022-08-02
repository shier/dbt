
Select
	CONSIGNMENTSTATUSID ConsignmentStatusID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name
From Auct_ConsignmentStatus_Raw