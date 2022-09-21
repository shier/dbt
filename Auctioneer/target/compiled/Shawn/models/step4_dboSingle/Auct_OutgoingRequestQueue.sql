
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