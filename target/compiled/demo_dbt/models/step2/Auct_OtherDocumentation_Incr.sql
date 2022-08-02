
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ConsignmentID as varchar), Cast(OtherDocumentationTypeID as varchar), DocumentationFileName, DocumentationOtherTitle, DocumentationFilePath)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_OtherDocumentation_Inter]
	)
Select * From hashData
