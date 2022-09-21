
Select
	cast([ConsignmentStatusID] as int) [CONSIGNMENTSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ConsignmentStatus_FinalView]