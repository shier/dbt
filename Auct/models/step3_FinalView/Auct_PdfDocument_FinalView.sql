{{ config(materialized='view',schema='stg')}}
Select
	[PdfDocumentID],[FileNameMask],[FullyQualifiedClassName] 
From stg.[Auct_PdfDocument_Incr] 
Where [dbt_valid_to] is null