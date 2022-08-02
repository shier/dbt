{{ config(materialized='view',schema='stg')}}
Select
	[SrvID],[SrvName] 
From stg.[Auct_SysreplServers_Incr] 
Where [dbt_valid_to] is null