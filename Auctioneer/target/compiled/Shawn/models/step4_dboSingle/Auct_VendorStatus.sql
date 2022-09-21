
Select
	cast([VendorStatusID] as int) [VENDORSTATUSID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_VendorStatus_FinalView]