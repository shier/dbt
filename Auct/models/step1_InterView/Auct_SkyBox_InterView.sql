{{ config(materialized='view',schema='stg')}}
Select
	[SKYBOXID] [SkyBoxID],
	[AUCTIONSKYBOXNUMBER] [AuctionSkyBoxNumber],
	cast([NAME] as nvarchar(4000)) [Name],
	[BIDDERID] [BidderID],
	[AUCTIONID] [AuctionID]
From stg.[Auct_SkyBox_Raw]
