
Select
	cast([SparePartsTypeID] as int) [SPAREPARTSTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([InActive] as nvarchar(4000)) [INACTIVE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SparePartsType_FinalView]