{{ config(materialized='table',schema='dbo')}}
Select
	cast([CollectionID] as int) [CollectionID],
	cast([Name] as nvarchar(512)) [Name],
	cast([Description] as nvarchar(512)) [Description],
	cast([AuctionID] as int) [AuctionID],
	cast([Active] as bit) [IsActive] 
From stg.[Auct_Collection_FinalView]