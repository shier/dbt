
Select
	cast(BUSINESSCENTRALHELPER_PARAMETERPAYLOAD as nvarchar(4000)) BusinessCentralHelper_ParaMeterPayload,
	cast(BUSINESSCENTRAL_DOCUMENTNO as nvarchar(4000)) BusinessCentral_Documentno,
	cast(BUSINESSCENTRALHELPER_METHODNAME as nvarchar(4000)) BusinessCentralHelper_MethodName,
	cast(BUSINESSCENTRALHELPER_PARAMETERTYPENAME as nvarchar(4000)) BusinessCentralHelper_ParaMeterTypeName,
	PROCESSED Processed,
	BUSINESSCENTRALARCHIVEID BusinessCentralArchiveID,
	INVOICEID InvoiceID
From Auct_Archive_Raw