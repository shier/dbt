create view "stg"."Auct_SysreplServers_FinalView__dbt_tmp" as
    
Select
	[SrvID],[SrvName] 
From stg.[Auct_SysreplServers_Incr] 
Where [dbt_valid_to] is null
