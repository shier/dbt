{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([AuctionID] as int) [AuctionID],
	cast([CompanyID] as int) [CompanyID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Acctcmpy_FinalView]