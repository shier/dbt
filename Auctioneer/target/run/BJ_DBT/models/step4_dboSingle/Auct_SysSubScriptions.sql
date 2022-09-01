
  
  if object_id ('"dbo"."Auct_SysSubScriptions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysSubScriptions__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysSubScriptions__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysSubScriptions__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysSubScriptions__dbt_tmp_temp_view as
    
Select
	cast([Loopback_Detection] as bit) [Loopback_Detection],
	cast([Queued_reinit] as bit) [Queued_reinit],
	cast([ArtID] as int) [ArtID],
	cast([SrvID] as int) [SrvID],
	cast([Dest_Db] as nvarchar(4000)) [Dest_db],
	cast([Status] as int) [Status],
	cast([Sync_Type] as int) [Sync_Type],
	cast([Login_Name] as nvarchar(4000)) [Login_Name],
	cast([SubScription_Type] as int) [SubScription_Type],
	cast([Distribution_JobID] as varbinary(8000)) [Distribution_JobID],
	cast([TimeStamp] as varbinary(8000)) [TimeStamp],
	cast([Update_Mode] as int) [Update_Mode],
	cast([NoSync_Type] as int) [NoSync_Type],
	cast([SrvName] as nvarchar(4000)) [SrvName] 
From stg.[Auct_SysSubScriptions_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysSubScriptions__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysSubScriptions__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysSubScriptions__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysSubScriptions__dbt_tmp_temp_view"
    end


