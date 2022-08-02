{{ config(materialized='table',schema='dbo')}}
Select
	cast([SkyBoxID] as int) [SkyBoxID],
	cast([AuctionSkyBoxNumber] as int) [AuctionSkyBoxNumber],
	cast([Name] as nvarchar(4000)) [Name],
	cast([BidderID] as int) [BidderID],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_SkyBox_FinalView]