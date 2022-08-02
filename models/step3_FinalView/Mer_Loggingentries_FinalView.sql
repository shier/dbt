{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Merchant_ID],[LogType],[Entry],[Add_Date] 
From stg.[Mer_Loggingentries_Incr] 
Where [dbt_valid_to] is null