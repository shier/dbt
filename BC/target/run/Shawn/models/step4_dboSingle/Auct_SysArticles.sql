
  
  if object_id ('"dbo"."Auct_SysArticles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysArticles__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysArticles__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysArticles__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysArticles__dbt_tmp_temp_view as
    
Select
	cast([Fire_Triggers_On_Snapshot] as bit) [fire_triggers_on_snapshot],
	cast([ArtID] as int) [artid],
	cast([Creation_Script] as nvarchar(4000)) [creation_script],
	cast([Del_Cmd] as nvarchar(4000)) [del_cmd],
	cast([Description] as nvarchar(4000)) [description],
	cast([Dest_Table] as nvarchar(4000)) [dest_table],
	cast([Filter] as int) [filter],
	cast([Filter_Clause] as nvarchar(4000)) [filter_clause],
	cast([Ins_Cmd] as nvarchar(4000)) [ins_cmd],
	cast([Name] as nvarchar(4000)) [name],
	cast([OBJID] as int) [objid],
	cast([PubID] as int) [pubid],
	cast([Pre_Creation_cmd] as int) [pre_creation_cmd],
	cast([Status] as int) [status],
	cast([Sync_OBJID] as int) [sync_objid],
	cast([Type] as int) [type],
	cast([Upd_Cmd] as nvarchar(4000)) [upd_cmd],
	cast([SchEMA_Option] as varbinary(8000)) [schema_option],
	cast([Dest_Owner] as nvarchar(4000)) [dest_owner],
	cast([Ins_Scripting_Proc] as int) [ins_scripting_proc],
	cast([Del_Scripting_Proc] as int) [del_scripting_proc],
	cast([Upd_Scripting_Proc] as int) [upd_scripting_proc],
	cast([Custom_Script] as nvarchar(4000)) [custom_script] 
From stg.[Auct_SysArticles_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysArticles__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysArticles__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysArticles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysArticles__dbt_tmp_temp_view"
    end


