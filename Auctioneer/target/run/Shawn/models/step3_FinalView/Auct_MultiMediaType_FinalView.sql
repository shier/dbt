create view "stg"."Auct_MultiMediaType_FinalView__dbt_tmp" as
    
Select
	[MultiMediaTypeID],[Name],[Active],[Extension] 
From stg.[Auct_MultiMediaType_Incr] 
Where [dbt_valid_to] is null
