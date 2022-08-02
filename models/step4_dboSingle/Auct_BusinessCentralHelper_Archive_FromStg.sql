{{ config(materialized='table',schema='dbo')}}
Select
	cast([BusinessCentralArchiveID] as int) [BusinessCentralArchiveID],
	cast([BusinessCentralHelper_MethodName] as nvarchar(4000)) [BusinessCentralHelper_MethodName],
	cast([BusinessCentralHelper_ParaMeterTypeName] as nvarchar(4000)) [BusinessCentralHelper_ParaMeterTypeName],
	cast([BusinessCentralHelper_ParaMeterPayload] as nvarchar(4000)) [BusinessCentralHelper_ParaMeterPayload],
	cast([InvoiceID] as int) [InvoiceID],
	cast([BusinessCentral_Documentno] as nvarchar(4000)) [BusinessCentral_Documentno],
	cast([Processed] as bit) [Processed] 
From stg.[Auct_BusinessCentralHelper_Archive_FinalView]