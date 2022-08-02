{{ config(materialized='view',schema='stg')}}
Select
	[BlockBidSignatureID],[AuctionID],[AuctionBidderNumber],[SignaturePath],[BlockBidID] 
From stg.[Auct_BlockBidSignature_Incr] 
Where [dbt_valid_to] is null