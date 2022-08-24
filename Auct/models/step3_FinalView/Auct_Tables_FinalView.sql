{{ config(materialized='view',schema='stg')}}
Select
	[TableID],[TableName],[UsersID],[DateCreated] 
From stg.[Auct_Tables_Incr] 
Where [dbt_valid_to] is null