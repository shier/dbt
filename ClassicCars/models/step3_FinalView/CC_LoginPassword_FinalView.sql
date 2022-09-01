{{ config(materialized='view',schema='stg')}}
Select
	[ID],[IsActive],[Password],[UserID],[AccessfailedCount],[CreateDate],[ModifyDate],[LockOutEnd] 
From stg.[CC_LoginPassword_Incr] 
Where [dbt_valid_to] is null