
  
  if object_id ('"dbo"."Auct_OtherDocumentation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OtherDocumentation__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_OtherDocumentation__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_OtherDocumentation__dbt_tmp"
    end


   EXEC('create view dbo.Auct_OtherDocumentation__dbt_tmp_temp_view as
    
Select
	cast([OtherDocumentationID] as int) [OTHERDOCUMENTATIONID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([OtherDocumentationTypeID] as int) [OTHERDOCUMENTATIONTYPEID],
	cast([DocumentationFileName] as nvarchar(4000)) [DOCUMENTATIONFILENAME],
	cast([DocumentationOtherTitle] as nvarchar(4000)) [DOCUMENTATIONOTHERTITLE],
	cast([DocumentationFilePath] as nvarchar(4000)) [DOCUMENTATIONFILEPATH] 
From stg.[Auct_OtherDocumentation_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_OtherDocumentation__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_OtherDocumentation__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_OtherDocumentation__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OtherDocumentation__dbt_tmp_temp_view"
    end


