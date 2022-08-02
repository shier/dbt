{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderStatusID] as int) [BidderStatusID],
	cast([Name] as nvarchar(512)) [BidderStatus],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ProcessorID] as int) [ProcessorID],
	cast([Active] as bit) [IsActive],
	cast([Processor] as nvarchar(512)) [Processor] 
From stg.[Auct_BidderStatus_FinalView]