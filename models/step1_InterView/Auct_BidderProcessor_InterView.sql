{{ config(materialized='view',schema='stg')}}
Select
	[BidderProcessorID] [BidderProcessorID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ClassName] as nvarchar(4000)) [ClassName]
From stg.[Auct_BidderProcessor_Raw]
