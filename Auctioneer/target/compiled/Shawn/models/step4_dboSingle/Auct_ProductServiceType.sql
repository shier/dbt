
Select
	cast([ProductServiceTypeID] as int) [PRODUCTSERVICETYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ProductServiceType_FinalView]