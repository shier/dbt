{{ config(materialized='view',schema='stg')}}
Select
	[ContactID] 
From stg.[Auct_BJInsurance_Incr] 
Where [dbt_valid_to] is null