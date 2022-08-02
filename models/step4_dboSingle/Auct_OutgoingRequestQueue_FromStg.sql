{{ config(materialized='table',schema='dbo')}}
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