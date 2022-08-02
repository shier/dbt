{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderTypeID] as int) [BidderTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_BidderType_FinalView]