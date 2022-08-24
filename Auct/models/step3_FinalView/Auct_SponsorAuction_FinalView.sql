{{ config(materialized='view',schema='stg')}}
Select
	[SponsorAuctionID],[MagadValue],[Sponsorcost],[BannerAMT],[SponsorID],[AuctionID],[LogoonsTage],[WebLink],[VendorAuctionID],[Created],[UpdateEventID],[ContractSigned],[ContractStart],[ContractEnd],[BannerSize],[CataLogind],[CataLogSize],[WebLinkText],[Comments],[RVINd],[VendorSpaceind],[SkyBoxind],[RvSpaceText],[CataLogText],[VendorSpaceText],[SkyBoxText],[Magissue1],[Magissue2],[Magissue3],[Magissue4],[LogoReceived] 
From stg.[Auct_SponsorAuction_Incr] 
Where [dbt_valid_to] is null