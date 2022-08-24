create view "stg"."Auct_ProducerProject_FinalView__dbt_tmp" as
    
Select
	[ProducerProjectID],[Name],[DateCreated],[Active] 
From stg.[Auct_ProducerProject_Incr] 
Where [dbt_valid_to] is null
