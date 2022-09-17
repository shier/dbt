{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderTypeID] as int) [BIDDERTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_BidderType_FinalView]