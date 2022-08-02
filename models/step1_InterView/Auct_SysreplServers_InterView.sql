{{ config(materialized='view',schema='stg')}}
Select
	[srvid] [SrvID],
	cast([srvname] as nvarchar(4000)) [SrvName]
From stg.[Auct_SysreplServers_Raw]
