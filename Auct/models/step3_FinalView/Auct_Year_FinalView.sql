{{ config(materialized='view',schema='stg')}}
Select
	[YearID],[DropDownText],[DisplayText] 
From stg.[Auct_Year_Incr] 
Where [dbt_valid_to] is null