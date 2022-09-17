
Select
	cast([GLInfoID] as int) [GLINFOID],
	cast([AccountID] as int) [ACCOUNTID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Task_ItemType] as int) [TASK_ITEMTYPE],
	cast([Created] as datetime) [CREATED],
	cast([GlCategoryID] as int) [GLCATEGORYID],
	cast([FeeTypeID] as int) [FEETYPEID],
	cast([Dept] as int) [DEPT],
	cast([Tasks] as nvarchar(4000)) [TASKS],
	cast([Category] as nvarchar(4000)) [CATEGORY],
	cast([Deptxx] as nvarchar(4000)) [DEPTXX] 
From stg.[Auct_GLInfo_FinalView]