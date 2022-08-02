{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionLocationID] as int) [AuctionLocationID],
	cast([AuctionID] as int) [AuctionID],
	cast([City] as nvarchar(100)) [City],
	cast([State] as nvarchar(50)) [State],
	cast([County] as nvarchar(100)) [County],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AuctionLocation_FinalView]