
  
  if object_id ('"dbo"."Auct_EventType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EventType_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_EventType_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_EventType_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_EventType_FromStg__dbt_tmp_temp_view as
    
Select
	cast([EventTypeID] as int) [EventTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ImageURL] as nvarchar(4000)) [ImageURL],
	cast([CanHaveChildren] as int) [CanHaveChildren],
	cast([ClassName] as nvarchar(4000)) [ClassName],
	cast([Description] as nvarchar(4000)) [Description],
	cast([DeActiveImageURL] as nvarchar(4000)) [DeActiveImageURL] 
From stg.[Auct_EventType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_EventType_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_EventType_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_EventType_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EventType_FromStg__dbt_tmp_temp_view"
    end


