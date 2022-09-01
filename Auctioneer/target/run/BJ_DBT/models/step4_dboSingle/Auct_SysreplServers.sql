
  
  if object_id ('"dbo"."Auct_SysreplServers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysreplServers__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysreplServers__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysreplServers__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysreplServers__dbt_tmp_temp_view as
    
Select
	cast([SrvID] as int) [SrvID],
	cast([SrvName] as nvarchar(4000)) [SrvName] 
From stg.[Auct_SysreplServers_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysreplServers__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysreplServers__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysreplServers__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysreplServers__dbt_tmp_temp_view"
    end


