{{ config(materialized='table',schema='dbo')}}
Select
	cast([BoothID] as int) [BoothID],
	cast([LocationID] as int) [LocationID],
	cast([AuctionID] as int) [AuctionID],
	cast([AmpsRequired] as int) [AmpsRequired],
	cast([VoltsRequired] as int) [VoltsRequired],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Booth_FinalView]