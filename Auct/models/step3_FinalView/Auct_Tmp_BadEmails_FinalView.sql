{{ config(materialized='view',schema='stg')}}
Select
	[Email],[First_Name],[Last_Name],[Ongage_Status] 
From stg.[Auct_Tmp_BadEmails_Incr] 
Where [dbt_valid_to] is null