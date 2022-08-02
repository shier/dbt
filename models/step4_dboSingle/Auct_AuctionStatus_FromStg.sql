{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionStatusID] as int) [AuctionStatusID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_AuctionStatus_FinalView]