
  
  if object_id ('"dbo"."CC_ReSourceGUIDEItem_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ReSourceGUIDEItem_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ReSourceGUIDEItem_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ReSourceGUIDEItem_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_ReSourceGUIDEItem_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([ReSourceGUIDEID] as int) [ReSourceGUIDEID],
	cast([SequenceGroup] as int) [SequenceGroup],
	cast([IsActive] as bit) [IsActive],
	cast([LogoURL] as nvarchar(4000)) [LogoURL],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Pagecontent] as nvarchar(4000)) [Pagecontent],
	cast([LinkText] as nvarchar(4000)) [LinkText],
	cast([LinkURL] as nvarchar(4000)) [LinkURL],
	cast([CalltoActionText] as nvarchar(4000)) [CalltoActionText],
	cast([CalltoActionURL] as nvarchar(4000)) [CalltoActionURL] 
From stg.[CC_ReSourceGUIDEItem_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ReSourceGUIDEItem_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ReSourceGUIDEItem_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ReSourceGUIDEItem_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ReSourceGUIDEItem_FromStg__dbt_tmp_temp_view"
    end


