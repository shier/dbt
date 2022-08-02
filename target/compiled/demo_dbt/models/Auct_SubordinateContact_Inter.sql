
Select
	cast(DAYSCOVERING as nvarchar(4000)) DaysCovering,
	cast(JOBTITLE as nvarchar(4000)) JobTitle,
	CREATED Created,
	VENDORID VendorID,
	CONTACTID ContactID,
	MEDIAPOSITIONID MediaPositionID,
	UPDATEEVENTID UpdateEventID,
	SUBORDINATECONTACTID SubordinateContactID,
	MEDIAAUCTIONID MediaAuctionID,
	SPONSORAUCTIONID SponsorAuctionID
From Auct_SubordinateContact_Raw