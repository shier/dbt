
Select
	cast([OtherDocumentationID] as int) [OTHERDOCUMENTATIONID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([OtherDocumentationTypeID] as int) [OTHERDOCUMENTATIONTYPEID],
	cast([DocumentationFileName] as nvarchar(4000)) [DOCUMENTATIONFILENAME],
	cast([DocumentationOtherTitle] as nvarchar(4000)) [DOCUMENTATIONOTHERTITLE],
	cast([DocumentationFilePath] as nvarchar(4000)) [DOCUMENTATIONFILEPATH] 
From stg.[Auct_OtherDocumentation_FinalView]