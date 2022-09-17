{{ config(materialized='table',schema='dbo')}}
Select
	cast([BusinessCentralArchiveID] as int) [BUSINESSCENTRALARCHIVEID],
	cast([BusinessCentralHelper_MethodName] as nvarchar(4000)) [BUSINESSCENTRALHELPER_METHODNAME],
	cast([BusinessCentralHelper_ParaMeterTypeName] as nvarchar(4000)) [BUSINESSCENTRALHELPER_PARAMETERTYPENAME],
	cast([BusinessCentralHelper_ParaMeterPayload] as nvarchar(4000)) [BUSINESSCENTRALHELPER_PARAMETERPAYLOAD],
	cast([InvoiceID] as int) [INVOICEID],
	cast([BusinessCentral_Documentno] as nvarchar(4000)) [BUSINESSCENTRAL_DOCUMENTNO],
	cast([Processed] as bit) [PROCESSED] 
From stg.[Auct_BusinessCentralHelper_Archive_FinalView]