{{ config(materialized='table',schema='dbo')}}
Select
	cast([SrvName] as nvarchar(4000)) [srvname],
	cast([SrvID] as int) [srvid] 
From stg.[Auct_SysreplServers_FinalView]