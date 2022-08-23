
  
  if object_id ('"dbo"."Auct_SysArticleUpdates_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysArticleUpdates_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysArticleUpdates_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysArticleUpdates_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysArticleUpdates_FromStg__dbt_tmp_temp_view as
    
Select
	cast([IDEntity_Support] as bit) [IDEntity_supPort],
	cast([Autogen] as bit) [Autogen],
	cast([ArtID] as int) [ArtID],
	cast([PubID] as int) [PuBid],
	cast([Sync_Ins_Proc] as int) [Sync_ins_proc],
	cast([Sync_upd_Proc] as int) [Sync_upd_proc],
	cast([Sync_Del_Proc] as int) [Sync_del_proc],
	cast([Sync_upd_Trig] as int) [Sync_upd_trig],
	cast([Conflict_TableID] as int) [Conflict_TableID],
	cast([Ins_Conflict_Proc] as int) [Ins_Conflict_proc] 
From stg.[Auct_SysArticleUpdates_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysArticleUpdates_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysArticleUpdates_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysArticleUpdates_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysArticleUpdates_FromStg__dbt_tmp_temp_view"
    end


