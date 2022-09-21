
  
  if object_id ('"dbo"."Auct_ConsignmentVideo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentVideo__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentVideo__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentVideo__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentVideo__dbt_tmp_temp_view as
    
Select
	cast([VideoID] as int) [VIDEOID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([URI] as nvarchar(4000)) [URI],
	cast([DateCreated] as DATETIME) [DATECREATED],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DisplayOrder] as int) [DISPLAYORDER],
	cast([EmbedURI] as nvarchar(4000)) [EMBEDURI],
	cast([Code] as nvarchar(4000)) [CODE],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_ConsignmentVideo_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentVideo__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentVideo__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentVideo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentVideo__dbt_tmp_temp_view"
    end


