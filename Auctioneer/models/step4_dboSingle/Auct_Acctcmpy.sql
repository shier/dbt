{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([CompanyID] as int) [COMPANYID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Acctcmpy_FinalView]