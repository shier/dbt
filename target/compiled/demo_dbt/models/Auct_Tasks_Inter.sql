
Select
	ACTIVE Active,
	TASKID TaskID,
	TASKCATEGORYID TaskCategoryID,
	TASKCATEGORYLINKID TaskCategoryLinkID,
	cast(TASKCATEGORYLINKGUID as nvarchar(4000)) TaskCategoryLinkGUID
From Auct_Tasks_Raw