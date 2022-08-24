create view "dbo_stg"."Auct_BidderDocumentationBits_InterView__dbt_tmp" as
    
Select
	[BIDDERDOCUMENTATIONBIT] [BidderDocumentationBit],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_BidderDocumentationBits_Raw]
