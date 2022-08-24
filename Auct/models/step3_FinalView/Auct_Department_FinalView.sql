{{ config(materialized='view',schema='stg')}}
Select
	[DepartmentID],[Active],[Name],[BCDepartmentCode] 
From stg.[Auct_Department_Incr] 
Where [dbt_valid_to] is null