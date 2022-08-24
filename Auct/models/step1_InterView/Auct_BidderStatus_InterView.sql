{{ config(materialized='view',schema='stg')}}
Select
	[BIDDERSTATUSID] [BidderStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[PROCESSORID] [ProcessorID],
	[ACTIVE] [Active],
	cast([PROCESSOR] as nvarchar(4000)) [Processor]
From stg.[Auct_BidderStatus_Raw]
