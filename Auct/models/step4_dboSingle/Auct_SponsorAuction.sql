{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([MagadValue] as numeric(19,4)) [MagadValue],
	cast([Sponsorcost] as numeric(19,4)) [Sponsorcost],
	cast([BannerAMT] as numeric(19,4)) [BannerAMT],
	cast([SponsorID] as int) [SponsorID],
	cast([AuctionID] as int) [AuctionID],
	cast([LogoonsTage] as nvarchar(4000)) [LogoonsTage],
	cast([WebLink] as nvarchar(4000)) [WebLink],
	cast([VendorAuctionID] as int) [VendorAuctionID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ContractSigned] as datetime) [ContractSigned],
	cast([ContractStart] as datetime) [ContractStart],
	cast([ContractEnd] as datetime) [ContractEnd],
	cast([BannerSize] as nvarchar(4000)) [BannerSize],
	cast([CataLogind] as nvarchar(4000)) [CataLogind],
	cast([CataLogSize] as nvarchar(4000)) [CataLogSize],
	cast([WebLinkText] as nvarchar(4000)) [WebLinkText],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([RVINd] as nvarchar(4000)) [RVINd],
	cast([VendorSpaceind] as nvarchar(4000)) [VendorSpaceind],
	cast([SkyBoxind] as nvarchar(4000)) [SkyBoxind],
	cast([RvSpaceText] as nvarchar(4000)) [RvSpaceText],
	cast([CataLogText] as nvarchar(4000)) [CataLogText],
	cast([VendorSpaceText] as nvarchar(4000)) [VendorSpaceText],
	cast([SkyBoxText] as nvarchar(4000)) [SkyBoxText],
	cast([Magissue1] as nvarchar(4000)) [Magissue1],
	cast([Magissue2] as nvarchar(4000)) [Magissue2],
	cast([Magissue3] as nvarchar(4000)) [Magissue3],
	cast([Magissue4] as nvarchar(4000)) [Magissue4],
	cast([LogoReceived] as nvarchar(4000)) [LogoReceived] 
From stg.[Auct_SponsorAuction_FinalView]