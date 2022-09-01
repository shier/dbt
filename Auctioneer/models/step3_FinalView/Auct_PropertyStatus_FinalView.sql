{{ config(materialized='view',schema='stg')}}
Select
	[PropertyStatusID],[Name],[Active] 
From stg.[Auct_PropertyStatus_Incr] 
Where [dbt_valid_to] is null