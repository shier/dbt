
Select
	cast([BlockBidSignatureID] as int) [BLOCKBIDSIGNATUREID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([AuctionBidderNumber] as int) [AUCTIONBIDDERNUMBER],
	cast([SignaturePath] as nvarchar(4000)) [SIGNATUREPATH],
	cast([BlockBidID] as int) [BLOCKBIDID] 
From stg.[Auct_BlockBidSignature_FinalView]