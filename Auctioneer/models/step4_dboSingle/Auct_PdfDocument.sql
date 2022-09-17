{{ config(materialized='table',schema='dbo')}}
Select
	cast([PdfDocumentID] as int) [PDFDOCUMENTID],
	cast([FileNameMask] as nvarchar(4000)) [FILENAMEMASK],
	cast([FullyQualifiedClassName] as nvarchar(4000)) [FULLYQUALIFIEDCLASSNAME] 
From stg.[Auct_PdfDocument_FinalView]