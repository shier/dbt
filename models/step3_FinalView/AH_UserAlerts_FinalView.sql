{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Enabled],[UserID],[MakeID],[ModelID],[YearFrom],[Yearto],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_UserAlerts_Incr] 
Where [dbt_valid_to] is null