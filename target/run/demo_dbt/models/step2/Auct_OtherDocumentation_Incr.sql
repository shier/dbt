
      
  
  if object_id ('"stg"."Auct_OtherDocumentation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OtherDocumentation_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_OtherDocumentation_Incr"','U') is not null
    begin
    drop table "stg"."Auct_OtherDocumentation_Incr"
    end


   EXEC('create view stg.Auct_OtherDocumentation_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(ConsignmentID as varchar), Cast(OtherDocumentationTypeID as varchar), DocumentationFileName, DocumentationOtherTitle, DocumentationFilePath)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_OtherDocumentation_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_OtherDocumentation_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_OtherDocumentation_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_OtherDocumentation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OtherDocumentation_Incr_temp_view"
    end



  