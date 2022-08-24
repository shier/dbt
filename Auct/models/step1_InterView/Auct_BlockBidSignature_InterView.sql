{{ config(materialized='view',schema='stg')}}
Select
	[BLOCKBIDSIGNATUREID] [BlockBidSignatureID],
	[AUCTIONID] [AuctionID],
	[AUCTIONBIDDERNUMBER] [AuctionBidderNumber],
	cast([SIGNATUREPATH] as nvarchar(4000)) [SignaturePath],
	[BLOCKBIDID] [BlockBidID]
From stg.[Auct_BlockBidSignature_Raw]
