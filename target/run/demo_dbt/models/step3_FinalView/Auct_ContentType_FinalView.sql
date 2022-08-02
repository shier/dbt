create view "stg"."Auct_ContentType_FinalView__dbt_tmp" as
    
Select
	[ContentTypeID],[Name],[Active] 
From stg.[Auct_ContentType_Incr] 
Where [dbt_valid_to] is null
