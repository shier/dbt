{{ config(materialized='table',schema='dbo')}}
Select
	cast([CollectionID] as int) [COLLECTIONID],
	cast([Name] as nvarchar(512)) [NAME],
	cast([Description] as nvarchar(512)) [DESCRIPTION],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_Collection_FinalView]