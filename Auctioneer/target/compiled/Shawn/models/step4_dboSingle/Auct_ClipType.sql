
Select
	cast([ClipTypeID] as int) [CLIPTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_ClipType_FinalView]