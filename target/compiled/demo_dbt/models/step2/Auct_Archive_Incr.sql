
With hashData as (
		Select
			HASHBYTES('MD5', concat(BusinessCentralHelper_ParaMeterPayload, BusinessCentral_Documentno, BusinessCentralHelper_MethodName, BusinessCentralHelper_ParaMeterTypeName, Cast(Processed as varchar), Cast(InvoiceID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Archive_Inter]
	)
Select * From hashData
