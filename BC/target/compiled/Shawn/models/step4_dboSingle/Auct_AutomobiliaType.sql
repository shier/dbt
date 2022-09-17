
Select
	cast([AutomobiliaTypeID] as int) [AUTOMOBILIATYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AutomobiliaType_FinalView]