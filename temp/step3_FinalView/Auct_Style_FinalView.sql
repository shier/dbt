{{ config(materialized='view',schema='stg')}}
Select
	[StyleID],[ModelID],[DropDownText],[DisplayText],[Active] 
From stg.[Auct_Style_Incr] 
Where [dbt_valid_to] is null