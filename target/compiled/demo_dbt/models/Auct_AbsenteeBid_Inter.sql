
Select
	cast(CONTACTPHONE1 as nvarchar(4000)) Contactphone1,
	cast(CONTACTPHONE2 as nvarchar(4000)) Contactphone2,
	cast(NOTE as nvarchar(4000)) Note,
	ABSENTEEBIDID AbsenteeBidID,
	AUCTIONBIDDERID AuctionBidderID,
	CONSIGNMENTID ConsignmentID,
	AUCTIONID AuctionID,
	ABSENTEETYPEIDBIT AbsenteeTypeIDBit,
	MAXBID MaxBID,
	LOTNUMBER LotNumber
From Auct_AbsenteeBid_Raw