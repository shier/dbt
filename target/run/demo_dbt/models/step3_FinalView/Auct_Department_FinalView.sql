create view "stg"."Auct_Department_FinalView__dbt_tmp" as
    
Select
	[DepartmentID],[Active],[Name],[BCDepartmentCode] 
From stg.[Auct_Department_Incr] 
Where [dbt_valid_to] is null
