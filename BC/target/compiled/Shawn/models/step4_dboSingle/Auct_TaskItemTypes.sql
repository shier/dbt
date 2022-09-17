
Select
	cast([TaskItemTypeID] as int) [TASKITEMTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([TaskCategoryID] as int) [TASKCATEGORYID],
	cast([CreateProcessor] as nvarchar(4000)) [CREATEPROCESSOR],
	cast([GetProcessor] as nvarchar(4000)) [GETPROCESSOR],
	cast([Actionhtml] as nvarchar(4000)) [ACTIONHTML],
	cast([IsTOpTask] as bit) [ISTOPTASK],
	cast([DisplayOrder] as numeric(18,0)) [DISPLAYORDER] 
From stg.[Auct_TaskItemTypes_FinalView]