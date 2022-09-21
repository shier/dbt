
Select
	cast([ConsignerApplictionID] as int) [CONSIGNERAPPLICTIONID],
	cast([AuctionID] as nvarchar(4000)) [AUCTIONID],
	cast([DealerLicenseNumber] as nvarchar(4000)) [DEALERLICENSENUMBER],
	cast([AuctionName] as nvarchar(4000)) [AUCTIONNAME],
	cast([DateRange] as nvarchar(4000)) [DATERANGE],
	cast([FullStateName] as nvarchar(4000)) [FULLSTATENAME],
	cast([Page1Footer] as nvarchar(4000)) [PAGE1FOOTER] 
From stg.[Auct_ConsignerApplication_FinalView]