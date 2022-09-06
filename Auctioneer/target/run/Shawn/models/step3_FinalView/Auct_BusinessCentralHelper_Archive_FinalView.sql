create view "stg"."Auct_BusinessCentralHelper_Archive_FinalView__dbt_tmp" as
    
Select
	[BusinessCentralArchiveID],[BusinessCentralHelper_MethodName],[BusinessCentralHelper_ParaMeterTypeName],[BusinessCentralHelper_ParaMeterPayload],[InvoiceID],[BusinessCentral_Documentno],[Processed] 
From stg.[Auct_BusinessCentralHelper_Archive_Incr] 
Where [dbt_valid_to] is null
