{{ config(materialized='view',schema='stg')}}
Select
	[FormID],[Active],[FileName],[DepartmentID],[DisplayName],[Description] 
From stg.[Auct_Forms_Incr] 
Where [dbt_valid_to] is null