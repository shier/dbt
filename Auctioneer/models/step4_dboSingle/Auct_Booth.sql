{{ config(materialized='table',schema='dbo')}}
Select
	cast([BoothID] as int) [BOOTHID],
	cast([LocationID] as int) [LOCATIONID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AmpsRequired] as int) [AMPSREQUIRED],
	cast([VoltsRequired] as int) [VOLTSREQUIRED],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Booth_FinalView]