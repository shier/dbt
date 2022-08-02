
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(ContractSigned as varchar), Cast(ContractStart as varchar), Cast(ContractEnd as varchar), Cast(SponsorID as varchar), Cast(AuctionID as varchar), Cast(VendorAuctionID as varchar), Cast(UpdateEventID as varchar), Cast(Sponsorcost as varchar), Cast(BannerAMT as varchar), Cast(MagadValue as varchar), LogoonsTage, SkyBoxText, Magissue1, Magissue2, Magissue3, Magissue4, LogoReceived, RVINd, VendorSpaceind, SkyBoxind, RvSpaceText, CataLogText, VendorSpaceText, WebLink, BannerSize, CataLogind, CataLogSize, WebLinkText, Comments)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SponsorAuction_Inter]
	)
Select * From hashData
