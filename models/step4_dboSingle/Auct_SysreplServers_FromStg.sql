{{ config(materialized='table',schema='dbo')}}
Select
	cast([SrvID] as int) [SrvID],
	cast([SrvName] as nvarchar(4000)) [SrvName] 
From stg.[Auct_SysreplServers_FinalView]