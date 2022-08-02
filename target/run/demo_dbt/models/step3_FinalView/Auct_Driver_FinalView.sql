create view "stg"."Auct_Driver_FinalView__dbt_tmp" as
    
Select
	[DriverID],[Active],[Name],[Created] 
From stg.[Auct_Driver_Incr] 
Where [dbt_valid_to] is null
