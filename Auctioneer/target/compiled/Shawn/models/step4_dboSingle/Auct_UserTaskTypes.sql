
Select
	cast([TaskTypeID] as int) [TASKTYPEID],
	cast([UserID] as int) [USERID] 
From stg.[Auct_UserTaskTypes_FinalView]