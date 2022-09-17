
Select
	cast([BidderStatusID] as int) [BIDDERSTATUSID],
	cast([Name] as nvarchar(512)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ProcessorID] as int) [PROCESSORID],
	cast([Active] as bit) [ACTIVE],
	cast([Processor] as nvarchar(512)) [PROCESSOR] 
From stg.[Auct_BidderStatus_FinalView]