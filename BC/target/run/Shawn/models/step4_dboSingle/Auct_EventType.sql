
  
  if object_id ('"dbo"."Auct_EventType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EventType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_EventType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_EventType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_EventType__dbt_tmp_temp_view as
    
Select
	cast([EventTypeID] as int) [EVENTTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([ImageURL] as nvarchar(4000)) [IMAGEURL],
	cast([CanHaveChildren] as int) [CANHAVECHILDREN],
	cast([ClassName] as nvarchar(4000)) [CLASSNAME],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([DeActiveImageURL] as nvarchar(4000)) [DEACTIVEIMAGEURL] 
From stg.[Auct_EventType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_EventType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_EventType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_EventType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_EventType__dbt_tmp_temp_view"
    end


