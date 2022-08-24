create view "stg"."Auct_Season_FinalView__dbt_tmp" as
    
Select
	[SeasonID],[Name],[Active] 
From stg.[Auct_Season_Incr] 
Where [dbt_valid_to] is null
