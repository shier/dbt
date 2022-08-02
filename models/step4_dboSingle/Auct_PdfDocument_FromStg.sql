{{ config(materialized='table',schema='dbo')}}
Select
	cast([PdfDocumentID] as int) [PdfDocumentID],
	cast([FileNameMask] as nvarchar(4000)) [FileNameMask],
	cast([FullyQualifiedClassName] as nvarchar(4000)) [FullyQualifiedClassName] 
From stg.[Auct_PdfDocument_FinalView]