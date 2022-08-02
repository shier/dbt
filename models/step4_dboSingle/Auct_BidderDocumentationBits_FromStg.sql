{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderDocumentationBit] as int) [BidderDocumentationBit],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_BidderDocumentationBits_FinalView]