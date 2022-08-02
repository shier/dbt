create view "stg"."Auct_Mapper_Country_FinalView__dbt_tmp" as
    
Select
	[MaptoID],[Name] 
From stg.[Auct_Mapper_Country_Incr] 
Where [dbt_valid_to] is null
