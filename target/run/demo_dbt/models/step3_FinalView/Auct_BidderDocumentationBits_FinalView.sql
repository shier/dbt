create view "stg"."Auct_BidderDocumentationBits_FinalView__dbt_tmp" as
    
Select
	[BidderDocumentationBit],[Name] 
From stg.[Auct_BidderDocumentationBits_Incr] 
Where [dbt_valid_to] is null
