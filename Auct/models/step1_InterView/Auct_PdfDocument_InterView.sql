{{ config(materialized='view',schema='stg')}}
Select
	[PDFDOCUMENTID] [PdfDocumentID],
	cast([FILENAMEMASK] as nvarchar(4000)) [FileNameMask],
	cast([FULLYQUALIFIEDCLASSNAME] as nvarchar(4000)) [FullyQualifiedClassName]
From stg.[Auct_PdfDocument_Raw]
