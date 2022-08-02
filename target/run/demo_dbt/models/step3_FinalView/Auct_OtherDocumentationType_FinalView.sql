create view "stg"."Auct_OtherDocumentationType_FinalView__dbt_tmp" as
    
Select
	[OtherDocumentationTypeID],[Title],[Description] 
From stg.[Auct_OtherDocumentationType_Incr] 
Where [dbt_valid_to] is null
