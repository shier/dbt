
Select
	CONSIGNMENTID ConsignmentID,
	OTHERDOCUMENTATIONTYPEID OtherDocumentationTypeID,
	OTHERDOCUMENTATIONID OtherDocumentationID,
	cast(DOCUMENTATIONFILENAME as nvarchar(4000)) DocumentationFileName,
	cast(DOCUMENTATIONOTHERTITLE as nvarchar(4000)) DocumentationOtherTitle,
	cast(DOCUMENTATIONFILEPATH as nvarchar(4000)) DocumentationFilePath
From Auct_OtherDocumentation_Raw