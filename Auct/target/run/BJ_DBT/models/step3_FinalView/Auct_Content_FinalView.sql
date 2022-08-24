create view "stg"."Auct_Content_FinalView__dbt_tmp" as
    
Select
	[ContentID],[ContentTypeID],[Name],[Active],[DateCreated] 
From stg.[Auct_Content_Incr] 
Where [dbt_valid_to] is null
