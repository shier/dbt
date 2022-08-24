{{ config(materialized='view',schema='stg')}}
Select
	[DriverID],[Active],[Name],[Created] 
From stg.[Auct_Driver_Incr] 
Where [dbt_valid_to] is null