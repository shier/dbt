{{ config(materialized='view',schema='stg')}}
Select
	[ModelID],[DropDownText],[DisplayText],[MakeID],[Active] 
From stg.[Auct_Model_Incr] 
Where [dbt_valid_to] is null