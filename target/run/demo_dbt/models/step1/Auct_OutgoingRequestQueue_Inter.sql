
  
  if object_id ('"stg"."Auct_OutgoingRequestQueue_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OutgoingRequestQueue_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_OutgoingRequestQueue_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_OutgoingRequestQueue_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_OutgoingRequestQueue_Inter__dbt_tmp_temp_view as
    
Select
	[OUTGOINGREQUESTQUEUEID] [OutgoingRequestQueueID],
	cast([URL] as nvarchar(4000)) [URL],
	cast([HTTPMETHOD] as nvarchar(4000)) [HttpMethod],
	cast([HTTPHEADERS] as nvarchar(4000)) [HttpHeaders],
	cast([REQUESTPAYLOAD] as nvarchar(4000)) [RequestPayload],
	cast([RESPONSEPAYLOAD] as nvarchar(4000)) [ResponsePayload],
	[RESPONSEHTTPSTATUSCODE] [ResponsehttpStatusCode],
	cast([STATUS] as nvarchar(4000)) [Status],
	[STATUSDATE] [StatusDate],
	cast([INVOICEID] as nvarchar(4000)) [InvoiceID],
	cast([DOCUMENTID] as nvarchar(4000)) [DocumentID]
From stg.[Auct_OutgoingRequestQueue_Raw]
    ');

  CREATE TABLE "stg"."Auct_OutgoingRequestQueue_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_OutgoingRequestQueue_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_OutgoingRequestQueue_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OutgoingRequestQueue_Inter__dbt_tmp_temp_view"
    end


