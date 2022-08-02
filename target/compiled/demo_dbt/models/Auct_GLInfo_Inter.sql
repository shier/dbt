
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(TASKS as nvarchar(4000)) Tasks,
	cast(CATEGORY as nvarchar(4000)) Category,
	cast(DEPTXX as nvarchar(4000)) Deptxx,
	CREATED Created,
	GLINFOID GLInfoID,
	ACCOUNTID AccountID,
	TASK_ITEMTYPE Task_ItemType,
	GLCATEGORYID GlCategoryID,
	FEETYPEID FeeTypeID,
	DEPT Dept
From Auct_GLInfo_Raw