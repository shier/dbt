create view "stg"."Auct_SysreplServers_InterView__dbt_tmp" as
    
Select
	[srvid] [SrvID],
	cast([srvname] as nvarchar(4000)) [SrvName]
From stg.[Auct_SysreplServers_Raw]
