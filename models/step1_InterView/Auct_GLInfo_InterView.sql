{{ config(materialized='view',schema='stg')}}
Select
	[GLINFOID] [GLInfoID],
	[ACCOUNTID] [AccountID],
	cast([NAME] as nvarchar(4000)) [Name],
	[TASK_ITEMTYPE] [Task_ItemType],
	[CREATED] [Created],
	[GLCATEGORYID] [GlCategoryID],
	[FEETYPEID] [FeeTypeID],
	[DEPT] [Dept],
	cast([TASKS] as nvarchar(4000)) [Tasks],
	cast([CATEGORY] as nvarchar(4000)) [Category],
	cast([DEPTXX] as nvarchar(4000)) [Deptxx]
From stg.[Auct_GLInfo_Raw]
