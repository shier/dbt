create view "stg"."Auct_OutgoingRequestQueue_FinalView__dbt_tmp" as
    
Select
	[OutgoingRequestQueueID],[URL],[HttpMethod],[HttpHeaders],[RequestPayload],[ResponsePayload],[ResponsehttpStatusCode],[Status],[StatusDate],[InvoiceID],[DocumentID] 
From stg.[Auct_OutgoingRequestQueue_Incr] 
Where [dbt_valid_to] is null
