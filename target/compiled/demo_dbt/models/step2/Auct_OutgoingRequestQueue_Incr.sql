
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(StatusDate as varchar), Cast(ResponsehttpStatusCode as varchar), ResponsePayload, Status, InvoiceID, DocumentID, URL, HttpMethod, HttpHeaders, RequestPayload)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_OutgoingRequestQueue_Inter]
	)
Select * From hashData
