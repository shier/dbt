
Select
	cast([SubordinateContactID] as int) [SUBORDINATECONTACTID],
	cast([MediaAuctionID] as int) [MEDIAAUCTIONID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([VendorID] as int) [VENDORID],
	cast([ContactID] as int) [CONTACTID],
	cast([MediaPositionID] as int) [MEDIAPOSITIONID],
	cast([DaysCovering] as nvarchar(4000)) [DAYSCOVERING],
	cast([JobTitle] as nvarchar(4000)) [JOBTITLE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SubordinateContact_FinalView]