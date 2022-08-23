
  
  if object_id ('"dbo"."Auct_PdfDocument_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PdfDocument_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_PdfDocument_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_PdfDocument_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_PdfDocument_FromStg__dbt_tmp_temp_view as
    
Select
	cast([PdfDocumentID] as int) [PdfDocumentID],
	cast([FileNameMask] as nvarchar(4000)) [FileNameMask],
	cast([FullyQualifiedClassName] as nvarchar(4000)) [FullyQualifiedClassName] 
From stg.[Auct_PdfDocument_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_PdfDocument_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_PdfDocument_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_PdfDocument_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_PdfDocument_FromStg__dbt_tmp_temp_view"
    end


