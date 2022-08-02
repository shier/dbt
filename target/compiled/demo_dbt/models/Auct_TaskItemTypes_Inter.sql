
Select
	cast(ACTIONHTML as nvarchar(4000)) Actionhtml,
	cast(NAME as nvarchar(4000)) Name,
	cast(CREATEPROCESSOR as nvarchar(4000)) CreateProcessor,
	cast(GETPROCESSOR as nvarchar(4000)) GetProcessor,
	TASKITEMTYPEID TaskItemTypeID,
	TASKCATEGORYID TaskCategoryID,
	ISTOPTASK IsTOpTask,
	DISPLAYORDER DisplayOrder
From Auct_TaskItemTypes_Raw