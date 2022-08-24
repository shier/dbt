{{ config(materialized='view',schema='stg')}}
Select
	[SUBORDINATECONTACTID] [SubordinateContactID],
	[MEDIAAUCTIONID] [MediaAuctionID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[VENDORID] [VendorID],
	[CONTACTID] [ContactID],
	[MEDIAPOSITIONID] [MediaPositionID],
	cast([DAYSCOVERING] as nvarchar(4000)) [DaysCovering],
	cast([JOBTITLE] as nvarchar(4000)) [JobTitle],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SubordinateContact_Raw]
