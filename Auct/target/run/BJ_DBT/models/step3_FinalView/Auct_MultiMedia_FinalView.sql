create view "stg"."Auct_MultiMedia_FinalView__dbt_tmp" as
    
Select
	[MultiMediaID],[ContentID],[MultiMediaTypeID],[FileName],[DateCreated],[Active],[MultiMediaCategoryID],[Name],[PathID],[SubPath] 
From stg.[Auct_MultiMedia_Incr] 
Where [dbt_valid_to] is null
