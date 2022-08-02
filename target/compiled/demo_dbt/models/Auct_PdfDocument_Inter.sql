
Select
	cast(FULLYQUALIFIEDCLASSNAME as nvarchar(4000)) FullyQualifiedClassName,
	cast(FILENAMEMASK as nvarchar(4000)) FileNameMask,
	PDFDOCUMENTID PdfDocumentID
From Auct_PdfDocument_Raw