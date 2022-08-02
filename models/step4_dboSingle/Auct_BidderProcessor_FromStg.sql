{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderProcessorID] as int) [BidderProcessorID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ClassName] as nvarchar(4000)) [ClassName] 
From stg.[Auct_BidderProcessor_FinalView]