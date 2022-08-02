create view "stg"."Auct_ClipType_FinalView__dbt_tmp" as
    
Select
	[ClipTypeID],[Name],[Active] 
From stg.[Auct_ClipType_Incr] 
Where [dbt_valid_to] is null
