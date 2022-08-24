create view "stg"."Auct_PdfDocument_FinalView__dbt_tmp" as
    
Select
	[PdfDocumentID],[FileNameMask],[FullyQualifiedClassName] 
From stg.[Auct_PdfDocument_Incr] 
Where [dbt_valid_to] is null
