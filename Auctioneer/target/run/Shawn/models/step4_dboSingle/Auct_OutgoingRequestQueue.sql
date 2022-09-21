
  
  if object_id ('"dbo"."Auct_OutgoingRequestQueue__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OutgoingRequestQueue__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_OutgoingRequestQueue__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_OutgoingRequestQueue__dbt_tmp"
    end


   EXEC('create view dbo.Auct_OutgoingRequestQueue__dbt_tmp_temp_view as
    
Select
	cast([OutgoingRequestQueueID] as int) [OUTGOINGREQUESTQUEUEID],
	cast([URL] as nvarchar(4000)) [URL],
	cast([HttpMethod] as nvarchar(4000)) [HTTPMETHOD],
	cast([HttpHeaders] as nvarchar(4000)) [HTTPHEADERS],
	cast([RequestPayload] as nvarchar(4000)) [REQUESTPAYLOAD],
	cast([ResponsePayload] as nvarchar(4000)) [RESPONSEPAYLOAD],
	cast([ResponsehttpStatusCode] as int) [RESPONSEHTTPSTATUSCODE],
	cast([Status] as nvarchar(4000)) [STATUS],
	cast([StatusDate] as datetime) [STATUSDATE],
	cast([InvoiceID] as nvarchar(4000)) [INVOICEID],
	cast([DocumentID] as nvarchar(4000)) [DOCUMENTID] 
From stg.[Auct_OutgoingRequestQueue_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_OutgoingRequestQueue__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_OutgoingRequestQueue__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_OutgoingRequestQueue__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OutgoingRequestQueue__dbt_tmp_temp_view"
    end


