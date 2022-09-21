
Select
	cast([ItemTypeID] as int) [ITEMTYPEID],
	cast([Name] as nvarchar(512)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ItemType_FinalView]