
Select
	cast([DocketID] as int) [DOCKETID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([LotStatus] as varchar(64)) [LOTSTATUS],
	cast([TargetTime] as datetime) [TARGETTIME],
	cast([ActualTime] as datetime) [ACTUALTIME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([LaneNumber] as int) [LANENUMBER] 
From stg.[Auct_Docket_FinalView]