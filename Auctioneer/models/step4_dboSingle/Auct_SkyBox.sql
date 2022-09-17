{{ config(materialized='table',schema='dbo')}}
Select
	cast([SkyBoxID] as int) [SKYBOXID],
	cast([AuctionSkyBoxNumber] as int) [AUCTIONSKYBOXNUMBER],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([BidderID] as int) [BIDDERID],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_SkyBox_FinalView]