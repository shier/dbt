
Select
	[OutgoingRequestQueueID],[StatusDate],[ResponsehttpStatusCode],[ResponsePayload],[Status],[InvoiceID],[DocumentID],[URL],[HttpMethod],[HttpHeaders],[RequestPayload] 
From stg.[Auct_OutgoingRequestQueue_Incr] 
Where [dbt_valid_to] is null