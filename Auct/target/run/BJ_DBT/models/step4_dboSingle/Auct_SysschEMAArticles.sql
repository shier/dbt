
  
  if object_id ('"dbo"."Auct_SysschEMAArticles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysschEMAArticles__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SysschEMAArticles__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SysschEMAArticles__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SysschEMAArticles__dbt_tmp_temp_view as
    
Select
	cast([ArtID] as int) [ArtID],
	cast([Creation_Script] as nvarchar(4000)) [Creation_Script],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Dest_OBJect] as nvarchar(4000)) [Dest_oBJect],
	cast([Name] as nvarchar(4000)) [Name],
	cast([OBJID] as int) [OBJID],
	cast([PubID] as int) [PubID],
	cast([Pre_Creation_cmd] as int) [Pre_Creation_cmd],
	cast([Status] as int) [Status],
	cast([Type] as int) [Type],
	cast([SchEMA_Option] as varbinary(8000)) [SchEMA_Option],
	cast([Dest_Owner] as nvarchar(4000)) [Dest_Owner] 
From stg.[Auct_SysschEMAArticles_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SysschEMAArticles__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SysschEMAArticles__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SysschEMAArticles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SysschEMAArticles__dbt_tmp_temp_view"
    end


