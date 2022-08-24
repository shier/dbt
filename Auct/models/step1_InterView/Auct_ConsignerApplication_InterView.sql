{{ config(materialized='view',schema='stg')}}
Select
	[CONSIGNERAPPLICTIONID] [ConsignerApplictionID],
	cast([AUCTIONID] as nvarchar(4000)) [AuctionID],
	cast([DEALERLICENSENUMBER] as nvarchar(4000)) [DealerLicenseNumber],
	cast([AUCTIONNAME] as nvarchar(4000)) [AuctionName],
	cast([DATERANGE] as nvarchar(4000)) [DateRange],
	cast([FULLSTATENAME] as nvarchar(4000)) [FullStateName],
	cast([PAGE1FOOTER] as nvarchar(4000)) [Page1Footer]
From stg.[Auct_ConsignerApplication_Raw]
