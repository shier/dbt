
Select
	AUCTIONID AuctionID,
	CONSIGNMENTID ConsignmentID,
	REVIEWSTATEID ReviewStateID,
	REVIEWSTATEDATE ReviewStateDate,
	MODIFIEDDATETIME ModifiedDateTime,
	cast(REVIEWSTATENAME as nvarchar(4000)) ReviewStateName
From Mer_Consignment_Raw