{{ config(materialized='table',schema='dbo')}}
Select
	cast([BlockBidSignatureID] as int) [BlockBidSignatureID],
	cast([AuctionID] as int) [AuctionID],
	cast([AuctionBidderNumber] as int) [AuctionBidderNumber],
	cast([SignaturePath] as nvarchar(4000)) [SignaturePath],
	cast([BlockBidID] as int) [BlockBidID] 
From stg.[Auct_BlockBidSignature_FinalView]