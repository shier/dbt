
Select
	cast(LOTSTATUS as nvarchar(4000)) LotStatus,
	DOCKETID DocketID,
	CONSIGNMENTID ConsignmentID,
	UPDATEEVENTID UpdateEventID,
	LANENUMBER LaneNumber,
	TARGETTIME TargetTime,
	ACTUALTIME ActualTime,
	CREATED Created
From Auct_Docket_Raw