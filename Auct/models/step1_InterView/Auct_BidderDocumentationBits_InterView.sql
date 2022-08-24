{{ config(materialized='view',schema='stg')}}
Select
	[BIDDERDOCUMENTATIONBIT] [BidderDocumentationBit],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_BidderDocumentationBits_Raw]
