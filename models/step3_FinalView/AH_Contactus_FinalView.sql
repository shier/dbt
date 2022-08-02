{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Email],[FirstName],[LastName],[Message] 
From stg.[AH_Contactus_Incr] 
Where [dbt_valid_to] is null