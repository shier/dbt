
  
  if object_id ('"stg"."Auct_OtherDocumentation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OtherDocumentation_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_OtherDocumentation_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_OtherDocumentation_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_OtherDocumentation_Inter__dbt_tmp_temp_view as
    
Select
	CONSIGNMENTID ConsignmentID,
	OTHERDOCUMENTATIONTYPEID OtherDocumentationTypeID,
	OTHERDOCUMENTATIONID OtherDocumentationID,
	cast(DOCUMENTATIONFILENAME as nvarchar(4000)) DocumentationFileName,
	cast(DOCUMENTATIONOTHERTITLE as nvarchar(4000)) DocumentationOtherTitle,
	cast(DOCUMENTATIONFILEPATH as nvarchar(4000)) DocumentationFilePath
From Auct_OtherDocumentation_Raw
    ');

  CREATE TABLE "stg"."Auct_OtherDocumentation_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_OtherDocumentation_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_OtherDocumentation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OtherDocumentation_Inter__dbt_tmp_temp_view"
    end


