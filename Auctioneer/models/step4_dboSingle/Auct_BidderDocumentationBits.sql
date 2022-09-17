{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderDocumentationBit] as int) [BIDDERDOCUMENTATIONBIT],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_BidderDocumentationBits_FinalView]