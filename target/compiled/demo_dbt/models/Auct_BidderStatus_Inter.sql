
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(PROCESSOR as nvarchar(4000)) Processor,
	BIDDERSTATUSID BidderStatusID,
	UPDATEEVENTID UpdateEventID,
	PROCESSORID ProcessorID,
	ACTIVE Active,
	CREATED Created
From Auct_BidderStatus_Raw