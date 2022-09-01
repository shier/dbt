{{ config(materialized='view',schema='stg')}}
Select
	[ID],[IsActive],[Minfraudscore],[CreateDate],[ModifyDate],[PaymentID] 
From stg.[CC_Maxmindscore_Incr] 
Where [dbt_valid_to] is null