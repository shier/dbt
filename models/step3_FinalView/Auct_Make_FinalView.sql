{{ config(materialized='view',schema='stg')}}
Select
	[MakeID],[DropDownText],[DisplayText],[Active] 
From stg.[Auct_Make_Incr] 
Where [dbt_valid_to] is null