{{ config(materialized='view',schema='stg')}}
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
