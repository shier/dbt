{{ config(materialized='view',schema='stg')}}
Select
	[BidderDocumentationBit],[Name] 
From stg.[Auct_BidderDocumentationBits_Incr] 
Where [dbt_valid_to] is null