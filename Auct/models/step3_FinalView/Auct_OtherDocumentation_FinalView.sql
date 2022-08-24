{{ config(materialized='view',schema='stg')}}
Select
	[OtherDocumentationID],[ConsignmentID],[OtherDocumentationTypeID],[DocumentationFileName],[DocumentationOtherTitle],[DocumentationFilePath] 
From stg.[Auct_OtherDocumentation_Incr] 
Where [dbt_valid_to] is null