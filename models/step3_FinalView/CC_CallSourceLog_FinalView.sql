{{ config(materialized='view',schema='stg')}}
Select
	[CallSourceLogPK],[IpAddress],[Message],[UserAgent],[AdfDoc],[CreateDateUTC],[Success] 
From stg.[CC_CallSourceLog_Incr] 
Where [dbt_valid_to] is null