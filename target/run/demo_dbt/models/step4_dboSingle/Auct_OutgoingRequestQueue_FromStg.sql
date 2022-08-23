
  
  if object_id ('"dbo"."Auct_OutgoingRequestQueue_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OutgoingRequestQueue_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_OutgoingRequestQueue_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_OutgoingRequestQueue_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_OutgoingRequestQueue_FromStg__dbt_tmp_temp_view as
    
Select
	cast([OutgoingRequestQueueID] as int) [OutgoingRequestQueueID],
	cast([URL] as nvarchar(4000)) [URL],
	cast([HttpMethod] as nvarchar(4000)) [HttpMethod],
	cast([HttpHeaders] as nvarchar(4000)) [HttpHeaders],
	cast([RequestPayload] as nvarchar(4000)) [RequestPayload],
	cast([ResponsePayload] as nvarchar(4000)) [ResponsePayload],
	cast([ResponsehttpStatusCode] as int) [ResponsehttpStatusCode],
	cast([Status] as nvarchar(4000)) [Status],
	cast([StatusDate] as datetime) [StatusDate],
	cast([InvoiceID] as nvarchar(4000)) [InvoiceID],
	cast([DocumentID] as nvarchar(4000)) [DocumentID] 
From stg.[Auct_OutgoingRequestQueue_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_OutgoingRequestQueue_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_OutgoingRequestQueue_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_OutgoingRequestQueue_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_OutgoingRequestQueue_FromStg__dbt_tmp_temp_view"
    end


