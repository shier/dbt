create view "stg"."Auct_Shot_FinalView__dbt_tmp" as
    
Select
	[ShotID],[ContentID],[FileName],[DateCreated],[Active],[Name],[PathID],[SubPath],[MultiMediaTypeID] 
From stg.[Auct_Shot_Incr] 
Where [dbt_valid_to] is null
