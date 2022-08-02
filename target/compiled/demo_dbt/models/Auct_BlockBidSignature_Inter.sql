
Select
	BLOCKBIDSIGNATUREID BlockBidSignatureID,
	AUCTIONID AuctionID,
	AUCTIONBIDDERNUMBER AuctionBidderNumber,
	BLOCKBIDID BlockBidID,
	cast(SIGNATUREPATH as nvarchar(4000)) SignaturePath
From Auct_BlockBidSignature_Raw