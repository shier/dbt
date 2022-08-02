
Select
	STATUSDATE StatusDate,
	OUTGOINGREQUESTQUEUEID OutgoingRequestQueueID,
	RESPONSEHTTPSTATUSCODE ResponsehttpStatusCode,
	cast(RESPONSEPAYLOAD as nvarchar(4000)) ResponsePayload,
	cast(STATUS as nvarchar(4000)) Status,
	cast(INVOICEID as nvarchar(4000)) InvoiceID,
	cast(DOCUMENTID as nvarchar(4000)) DocumentID,
	cast(URL as nvarchar(4000)) URL,
	cast(HTTPMETHOD as nvarchar(4000)) HttpMethod,
	cast(HTTPHEADERS as nvarchar(4000)) HttpHeaders,
	cast(REQUESTPAYLOAD as nvarchar(4000)) RequestPayload
From Auct_OutgoingRequestQueue_Raw