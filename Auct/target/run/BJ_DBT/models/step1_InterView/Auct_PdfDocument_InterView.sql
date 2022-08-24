create view "dbo_stg"."Auct_PdfDocument_InterView__dbt_tmp" as
    
Select
	[PDFDOCUMENTID] [PdfDocumentID],
	cast([FILENAMEMASK] as nvarchar(4000)) [FileNameMask],
	cast([FULLYQUALIFIEDCLASSNAME] as nvarchar(4000)) [FullyQualifiedClassName]
From stg.[Auct_PdfDocument_Raw]
