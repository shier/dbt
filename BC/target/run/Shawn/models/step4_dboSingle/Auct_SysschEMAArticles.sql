
  
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
	cast([ArtID] as int) [artid],
	cast([Creation_Script] as nvarchar(4000)) [creation_script],
	cast([Description] as nvarchar(4000)) [description],
	cast([Dest_OBJect] as nvarchar(4000)) [dest_object],
	cast([Name] as nvarchar(4000)) [name],
	cast([OBJID] as int) [objid],
	cast([PubID] as int) [pubid],
	cast([Pre_Creation_cmd] as int) [pre_creation_cmd],
	cast([Status] as int) [status],
	cast([Type] as int) [type],
	cast([SchEMA_Option] as varbinary(8000)) [schema_option],
	cast([Dest_Owner] as nvarchar(4000)) [dest_owner] 
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


