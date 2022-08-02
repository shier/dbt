{{ config(materialized='table',schema='dbo')}}
Select
	cast([OtherDocumentationID] as int) [OtherDocumentationID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([OtherDocumentationTypeID] as int) [OtherDocumentationTypeID],
	cast([DocumentationFileName] as nvarchar(4000)) [DocumentationFileName],
	cast([DocumentationOtherTitle] as nvarchar(4000)) [DocumentationOtherTitle],
	cast([DocumentationFilePath] as nvarchar(4000)) [DocumentationFilePath] 
From stg.[Auct_OtherDocumentation_FinalView]