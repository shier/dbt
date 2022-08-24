create view "stg"."Auct_Clip_FinalView__dbt_tmp" as
    
Select
	[ClipID],[ClipTypeID],[MultiMediaID],[Active],[Name],[Description] 
From stg.[Auct_Clip_Incr] 
Where [dbt_valid_to] is null
