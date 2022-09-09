{{ config(materialized='view',schema='stg')}}
Select
	[Host],[Domain],[UserName],[Password] 
From [Auct_EmailConfiguration_Incr] 
Where [dbt_valid_to] is null