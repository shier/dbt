
      
  
  if object_id ('"stg"."Auct_OutgoingRequestQueue_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OutgoingRequestQueue_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_OutgoingRequestQueue_Incr"','U') is not null
    begin
    drop table "stg"."Auct_OutgoingRequestQueue_Incr"
    end


   EXEC('create view stg.Auct_OutgoingRequestQueue_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(StatusDate as varchar), Cast(ResponsehttpStatusCode as varchar), ResponsePayload, Status, InvoiceID, DocumentID, URL, HttpMethod, HttpHeaders, RequestPayload)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_OutgoingRequestQueue_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_OutgoingRequestQueue_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_OutgoingRequestQueue_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_OutgoingRequestQueue_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OutgoingRequestQueue_Incr_temp_view"
    end



  