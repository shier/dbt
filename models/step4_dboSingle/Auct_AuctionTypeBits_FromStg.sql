{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionTypeBit] as int) [AuctionTypeBIt],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as bit) [Active] 
From stg.[Auct_AuctionTypeBits_FinalView]