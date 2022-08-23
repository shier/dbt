
  
  if object_id ('"dbo"."Auct_ConsignmentVideo_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentVideo_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_ConsignmentVideo_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_ConsignmentVideo_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_ConsignmentVideo_FromStg__dbt_tmp_temp_view as
    
Select
	cast([VideoID] as int) [VideoID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([URI] as nvarchar(4000)) [URI],
	cast([DateCreated] as DATETIME) [DateCreated],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([EmbedURI] as nvarchar(4000)) [EmbedURI],
	cast([Code] as nvarchar(4000)) [Code],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Active] as bit) [Active] 
From stg.[Auct_ConsignmentVideo_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_ConsignmentVideo_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_ConsignmentVideo_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_ConsignmentVideo_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_ConsignmentVideo_FromStg__dbt_tmp_temp_view"
    end


